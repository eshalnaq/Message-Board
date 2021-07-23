class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        redirect_back fallback_location: { controller: "messages", action: "show", id: comment.message_id }
    end

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy
    
        redirect_back fallback_location: { controller: "messages", action: "show", id: @comment.message_id}
    end

    # PRIVATE

    private

    def comment_params
        params.require(:comment).permit(:content, :name, :message_id)
    end
end