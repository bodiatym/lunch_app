# frozen_string_literal: true

module Users
  class ProfilesController < ApplicationController
    before_action :set_profile
    before_action :authenticate_user!

    def index
      if user_signed_in?
        redirect_to users_profile_path(current_user.id)
      else
        redirect_to new_user_registration_path
      end
    end

    def show; end

    def set_profile
      @users_profile = ::Users::Profile.find_by!(user_id: params[:id])
    end

    private

    def profile_params
      params.require(:profile).permit(:id, :user_id)
    end
  end
end
