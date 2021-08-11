class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        redirect_back fallback_location: { controller: "messages", action: "show", id: comment.message_id }
    end

    def destroy 
        @comment = Comment.find(params[:id])
        if current_user.id == @comment.user_id
            @comment.destroy
        elsif current_user.superuser
            @comment.destroy
        end
    
        redirect_back fallback_location: { controller: "messages", action: "show", id: @comment.message_id}
    end

    # PRIVATE

    private

    def comment_params
        params.require(:comment).permit(:content, :name, :message_id, :user_id)
    end
end