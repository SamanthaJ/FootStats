class Api::V1::PlayersController < ApplicationController

  def index
    render json: Player.all
  end

  def show
    player = Player.find(params[:id])
    render json: player
  end
end
