class PagesController < ApplicationController

  def attend
    @events = Event.all
    @sponsors = Sponsor.all
  end

 def homepage
 end

 def public
   @sponsors = Sponsor.all
 end

 def incompany
   @sponsors = Sponsor.all
   @workshops = Workshop.all
 end

 def sponsor
   @sponsors = Sponsor.all
 end
end
