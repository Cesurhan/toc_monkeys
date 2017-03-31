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
  end

  def sponsor
    @sponsorrequest = Sponsorrequest.new
  end

end
