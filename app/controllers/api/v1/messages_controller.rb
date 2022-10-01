class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: %i[show update destroy]

  # GET /messages
  def index
    getrandom = rand(Message.count)
    message = Message.offset(getrandom).first
    puts message.inspect
    render json: message
  end

  # GET /messages/1
  def show
    render json: @message
  end
end
