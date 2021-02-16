class MessagesController < ApplicationController
    
    def index
        @messages = Message.all;
        render json @messages
    end

    def show
        @message = Message.find(params[:id]);
        render json: @message
    end

    def create
        @message = Message.new(fetch_params);
        message_validation
    end
    
    def destroy
        @message = Message.find(params[:id]);
        @message.destroy();
        render json: {message: "Successfully Deleted"}
    end
    

end
