class Admin::SponsorrequestsController < ApplicationController
  def index
   @sponsorrequests = Sponsorrequest.all
   end

    def show
     @sponsorrequest = Sponsorrequest.find(params[:id])
    end

    def new
     @sponsorrequest = Sponsorrequest.new
    end

    def edit
     @sponsorrequest = Sponsorrequest.find(params[:id])
     end

     def create
       @sponsorrequest = Sponsorrequest.new(sponsorrequest_params)

       if @sponsorrequest.save
         redirect_to admin_sponsorrequest_path(@sponsorrequest), notice: "sponsorrequest successfully created"
       else
         render admin_sponsorrequest_path
       end
     end

     def destroy
       @sponsorrequest = Sponsorrequest.find(params[:id])

       if @sponsorrequest.destroy
         redirect_to admin_sponsorrequests_path, notice: "sponsorrequest successfully removed"
     else
       render admin_sponsorrequests_path
   end
 end


 def update
   @sponsorrequest = Sponsorrequest.find(params[:id])
   if @sponsorrequest.update_attributes(sponsorrequest_params)
     redirect_to admin_sponsorrequests_path
   else
     render 'edit'
   end
 end

 private

 def sponsorrequest_params
   params.require(:sponsorrequest).permit(:company_name)
 end

end
