class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.order('RANDOM()').first
    render json: @greetings, status: :ok
  end
end
