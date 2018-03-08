class ProfilesController < ApplicationController
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    authorize @profile
    if @profile.save
      redirect_to dashboard_path
    else
      render "dashboards/show"
    end
  end

  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    authorize @profile
    if @profile.save
      redirect_to dashboard_path
    else
      render "dashboards/show"
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name,:photo)
  end
end
