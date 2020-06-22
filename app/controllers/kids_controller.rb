class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: @kids
  end

  def create
    @kid = Kid.create(kids_params)
    render json: @kid
  end

  private

  def kids_params
    params.require(:kid).permit(:username, :description, :favorite_color, :age)
end
