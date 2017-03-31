class PagesController < ApplicationController
  def homepage
  end

  def attend
    @events = Event.all
  end

  def incompany
    @workshops = Workshop.all
  end

  def sponsor
  end
end
