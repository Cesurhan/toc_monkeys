class Admin::SponsorsController < ApplicationController

  def index
    @sponsors = Sponsor.all
    end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
    end

  def destroy
    @sponsor = Sponsor.destroy
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update_attributes(sponsor_params)
      redirect_to @sponsor
    else
      render 'edit'
    end
  end

  private

  def sponsor_params
    params.require(:sponsor).permit(:company_name, :logo)
  end


end
