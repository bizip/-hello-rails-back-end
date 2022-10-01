class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: %i[show update destroy]

  # GET /messages
  def index
    @messages = Message.all
    render json: @messages
  end

  # GET /messages/1
  def show
    render json: @message
  end
end
