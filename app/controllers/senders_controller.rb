class SendersController < ApplicationController

    def index
        @senders = Sender.all;
        render json: @senders
    end
    
    def show
        @sender = Sender.find(params[:id]);
        render json: @sender.as_json
    end
    
    def create
        @sender = Sender.new(username: params[:username])
        sender_validation
    end
    
    def destroy
        @Sender = Sender.find(params[:id])
        Sender.destroy_by(sender_id: @sender.id)
        @sender.delete
    end

    private


    def sender_validation
        if @sender.valid?
            @sender = Sender.find_or_create_by(username: @sender.username)
            render json: @sender.as_json(include: {receivers: {}, messages:{}})
        else
            render json: {errors: @sender.errors.messages}
        end
    end


end
