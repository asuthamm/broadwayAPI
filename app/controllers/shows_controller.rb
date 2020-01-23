class ShowsController < ApplicationController

    def index
        @shows = Show.all 
        render json: @shows
    end

    def show 
        @show = Show.find_by(id: params[:id])
        render json: @show
    end

    def create
        @show = Show.create(show_params)
        if @show.valid?
          render json: @show, status: 201
        else
          render json: @show.errors.full_messages, status: 422
        end
    end
    
    def update
        @show = Show.find(params[:id])
        @show.update(show_params)
        render json: @show
      end
    
      def destroy
          @show = Show.find(params[:id])
          @show.destroy
          render json: {message: "show is now deleted", show: @show}
      end


      
    private
    def show_params
        params.permit(:title, :show_type, :opening_date, :performances, :likes, :image)
    end
   
end
