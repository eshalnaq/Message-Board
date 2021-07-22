class CommentsController < ApplicationController
    def create
        Comment.create(comment_params)
        redirect_to controller: :messages
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :name, :message_id)
    end
end