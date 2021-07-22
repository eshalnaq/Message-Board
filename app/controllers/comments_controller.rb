class CommentsController < ApplicationController
    def create
        Comment.create(comment_params)
        redirect_to controller: :messages
    end

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy
    
        redirect_to controller: "messages"
    end

    # PRIVATE

    private

    def comment_params
        params.require(:comment).permit(:content, :name, :message_id)
    end
end