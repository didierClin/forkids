class ProfilesController < ApplicationController

  def index
  end

  def new
    @profile = Profile.new
  end

  def show
  end

  def update
  end
  
  def create
    current_user.profile = Profile.new(profile_params)
    current_user.save!
    redirect_to "/"
  end

  private
  def profile_params
    params[:profile][:gender] = params[:profile][:gender].to_i
    params.require(:profile).permit(:lastname, :firstname, :birth_date, :gender, :street, :city, :postcode, :country)
  end
end
