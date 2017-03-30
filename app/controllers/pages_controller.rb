class PagesController < ApplicationController
  def homepage
  end

  def attend
    @events = Event.all
  end

  def incompany
  end

  def sponsor
  end
end
