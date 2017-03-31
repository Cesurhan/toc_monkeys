class PagesController < ApplicationController
  def homepage
  end

  def attend
  end

  def incompany
     @workshops = Workshop.all
     @incompany=Incompany.new
  end

  def sponsor
  end
end
