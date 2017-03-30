class Admin::SponsorsController < ApplicationController

  def index
    @sponsors = Sponsor.all
    end

  def edit
    @sponsors = Sponsor.find(params[:id])
    end

end
