class Admin::EventsController < ApplicationController
  before_action :set_event, only: [:show, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
  end

  def destroy
    @event.destroy
    redirect_to admin_events_path
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
    end
end
