# frozen_string_literal: true

#= HomeController
class HomeController < ApplicationController
  def index
    render json: { message: 'The API is working!' }, status: :ok
  end
end
