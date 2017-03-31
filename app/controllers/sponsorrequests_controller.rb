class SponsorrequestsController < ApplicationController
  before_action :set_sponsorrequest, only: [:show, :edit, :update, :delete]
  before_action :authenticate_user!

  def index
    @sponsorrequests = current_user.sponsorrequests
  end

  def show
  end

  def create
    @sponsorrequest = current_user.sponsorrequests.build(sponsorrequest_params)

    if @sponsorrequest.save
      redirect_to @sponsorrequest, notice: "sponsor request successfully created"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @sponsorrequest.update(sponsorrequest_params)
      redirect_to @sponsorrequest, notice: "Sponsor request successfully updated"
    else
      render :edit
    end
  end

  private
    def set_sponsorrequest
      @sponsorrequest = Sponsorrequest.find(params[:id])
    end

    def sponsorrequest_params
      params.require(:sponsorrequest).permit(:first_name, :last_name, :company_name, :email, :date, :spaces_available, :comments)
    end

end
