class NomineesController < ApplicationController

    def index
        @nominees = Nominee.all 
        render json: @nominees
    end

    def show 
        @nominee = Nominee.find_by(id: params[:id])
        render json: @nominee
    end

    def create
        @nominee = Nominee.create(nominee_params)
        if @nominee.valid?
          render json: @nominee, status: 201
        else
          render json: @nominee.errors.full_messages, status: 422
        end
    end
    
    def update
        @nominee = Nominee.find(params[:id])
        @nominee.update(nominee_params)
        render json: @nominee
      end
    
      def destroy
          @nominee = Nominee.find(params[:id])
          @nominee.destroy
          render json: {message: "Nominee is now deleted", nominee: @nominee}
      end


      
    private
    def nominee_params
        params.permit(:name, :recipient)
    end
end
