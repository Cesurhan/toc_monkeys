class PagesController < ApplicationController

 def homepage
 end


 def public
   @sponsors = Sponsor.all
 end

 def incompany
   @sponsors = Sponsor.all
 end

 def sponsor
   @sponsors = Sponsor.all
 end

  def incompany
    @workshops = Workshop.all
    @sponsors = Sponsor.all
  end

  def attend
    @sponsors = Sponsor.all
  end


end
