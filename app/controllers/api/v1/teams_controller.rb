class Api::V1::TeamsController < ApplicationController
  skip_before_filter :authenticity_token

  def index
    render json: Team.all
  end

  def show
    team = Team.find(params[:id])
    render json: team
  end
end
