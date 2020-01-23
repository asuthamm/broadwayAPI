class CommentsController < ApplicationController
    def index
        @comments = Comment.all 
        render json: @comments
    end
    def show 
        @comment = Comment.find_by(id: params[:id])
        render json: @comment
    end

    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
          render json: @comment, status: 201
        else
          render json: @comment.errors.full_messages, status: 422
        end
    end
    
    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment
      end
    
      def destroy
          @comment = Comment.find(params[:id])
          @comment.destroy
          render json: {message: "Comment is now deleted", comment: @comment}
      end


      
    private
    def comment_params
        params.permit(:commnt, :show_id)
    end

end
