class MessagesController < ApplicationController
    
    # List of created messages + form to create new message
    def index
        @messages = Message.all.order("created_at DESC")
        @message = Message.new
        @user = current_user
    end

    # Creation of messages + redirect to index to post
    def create 
        Message.create(message_params)
        redirect_to action: "index"
    end
    
    def destroy
        @message = Message.find(params[:id])
        if current_user.id == @message.user_id
            @message.destroy
        end
        redirect_to action: "index"
      end
    
    def show
        @message = Message.find(params[:id])
        @comments = @message.comments.all.order("created_at DESC")
        @comment = Comment.new
        @user = current_user
    end

    def logout

        session[:user_id] = nil
    
        redirect_to '/welcome'
    
      end

    # Only allowing content param + secure website from changing w/ web development tools
    private
    def message_params
        params.require(:message).permit(:content, :name, :image, :user_id)
    end

end
