class Admin::SponsorsController < ApplicationController

  def index
    @sponsor = Sponsor.all
    end


end
