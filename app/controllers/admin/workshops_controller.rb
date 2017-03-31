class Admin::WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]

  def index
    @workshops = Workshop.all.order("created_at ASC")
  end

  def show
  end

  def new
    @workshop = Workshop.new
  end

  def create
    @workshop = Workshop.new(workshop_params)

    if @workshop.save
      redirect_to admin_workshop_path(@workshop), notice: 'Workshop Created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @workshop.update(workshop_params)
      redirect_to admin_workshop_path(@workshop), notice: 'Workshop updated'
    else
      render :edit
    end
  end

  def destroy
    @workshop.destroy
    redirect_to admin_workshops_path
  end

  private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end

  def workshop_params
    params.require(:workshop).permit(:title, :description, :image, :link_to_live_demo, :link_to_github)
  end

end
