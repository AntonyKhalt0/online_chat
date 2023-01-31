class MessagesController < ApplicationController
  def create
    @message = chat.messages.new(message_params)
    if @message.save
      @message.broadcast_append_to @message.chat
    else
      redirect_to chat
    end
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end

  def chat
    @chat ||= Chat.find(params[:chat_id])
  end
end
