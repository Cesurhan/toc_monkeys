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

    def create
      @sponsor = Sponsor.new(sponsor_params)

      if @sponsor.save
        redirect_to admin_sponsor_path(@sponsor), notice: "Sponsor successfully created"
      else
        render admin_sponsor_path
      end
    end

    def destroy
      @sponsor = Sponsor.find(params[:id])

        if @sponsor.destroy
          redirect_to admin_sponsors_path, notice: "Sponsor successfully removed"
      else
        render admin_sponsors_path
    end
  end


  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update_attributes(sponsor_params)
      redirect_to admin_sponsors_path
    else
      render 'edit'
    end
  end

  private

  def sponsor_params
    params.require(:sponsor).permit(:company_name, :logo)
  end

end
