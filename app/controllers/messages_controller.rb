class MessagesController < ApplicationController

    def index
        @message = Message.new
        @messages = Message.includes(:user).all
    end

    def create
        message = Message.new(create_params)
        if message.save
            redirect_to root_path, notice: 'メッセージを送信しました'
        else
            redirect_to root_path, notice: 'メッセージの送信に失敗しました'
        end
    end 

    def edit
        @message = Message.find(params[:id])
    end

    def update
        @message = Message.find(params[:id])
        if @message.update(update_params)
            redirect_to root_path, notice: '変更しました'
        else
            redirect_to root_path, notice: '変更に失敗しました'
        end

    end

    def destroy
        message = Message.find(params[:id])
          message.destroy 
          redirect_to "/"
         
       end

    def create_params
    	params.require(:message).permit(:content).merge(user_id: 1)
    end

    def update_params
        params.require(:message).permit(:content)
    end

    

    private


end
