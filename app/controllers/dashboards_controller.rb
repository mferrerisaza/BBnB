class DashboardsController < ApplicationController
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  def show
    @user = current_user
    if @user.profile.nil?
      @profile = Profile.new()
    else
      @profile = @user.profile
    end
  end
end
