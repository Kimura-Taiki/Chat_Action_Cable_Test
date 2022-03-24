class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create!(message_params)
    p @message
    # redirect_to "/"
    # render
  end

  private
  def message_params
    params.require(:message).permit(:context)
  end
end
