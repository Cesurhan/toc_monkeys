class Admin::IncompaniesController < ApplicationController
  def index
     @incompanies = Incompany.all
  end

  def new
     @incompany = Incompany.new
  end

  def show ;end

  def edit ;end

  def update
    if @pincompany.update(incompany_params)
      redirect_to admin_incompany_path, notice: 'Incompany updated'
    else
      render :edit
    end
  end

  def create
    @incompany = Incompany.new(incompany_params)
    if @incompany.save
        redirect_to admin_incompany_path, notice: "Thank you for your request! We will be in touch with you soon."
    else
      render :new
    end
  end

  def destroy
    @incompany.destroy
    redirect_to admin_incompany_path
  end

private

  def set_incompany
    @incompany = Incompany.find(params[:id])
  end

  def incompany_params
    params.require(:incompany).permit(:first_name, :last_name, :company_name, :email, :date, :spaces_available, :comments, :wordshop_id)
  end
end
