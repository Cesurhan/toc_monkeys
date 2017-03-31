class Admin::WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.all.order("created_at ASC")
  end

  def show
    @workshop = Workshop.find(params[:id])
  end

  def new
    @workshop = Workshop.new
  end

end
