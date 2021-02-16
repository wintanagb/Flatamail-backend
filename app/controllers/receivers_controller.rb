class ReceiversController < ApplicationController
    def index
        @receivers = Receiver.all;
        render json: @receivers
    end
    
    def show
        @receiver = Receiver.find(params[:id]);
        render json: @receiver.as_json
    end

    # def create
    #     @receiver = Receiver.new(username: params[:username])
    #     receiver_validation
    # end
    
    # def destroy
    #     @receiver = Receiver.find(params[:id])
    #     receiver.destroy_by(receiver_id: @receiver.id)
    #     @receiver.delete
    # end

    # private


    # def receiver_validation
    #     if @receiver.valid?
    #         @receiver = Receiver.find_or_create_by(username: @receiver.username)
    #         render json: @receiver.as_json(include: {senders: {}, messages:{}})
    #     else
    #         render json: {errors: @receiver.errors.messages}
    #     end
    # end

end
