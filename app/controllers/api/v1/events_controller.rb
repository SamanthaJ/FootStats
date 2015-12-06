class Api::V1::EventsController < ApplicationController
skip_before_filter :verify_authenticity_token

  def index
    render json: Event.all
  end

  def show
    event = Event.find(params[:id])
    render json: event
  end

  def create
    event = Event.new(event_params)
    if event.save
      head 200
    else
      head 500
    end
  end

  private

  def event_params
    params.require("event").permit("event_type")
  end
end
