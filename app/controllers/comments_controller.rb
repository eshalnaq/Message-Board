class CommentsController < ApplicationController
    def create
        Comment.create(comment_params)
        redirect_to controller: :messages, action: "show"
    end

end