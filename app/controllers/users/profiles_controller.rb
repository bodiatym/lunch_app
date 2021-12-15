# frozen_string_literal: true

module Users
  class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile
    before_action :authorize_profile!

    def index; end

    private

    def set_profile
      @profile = ::Users::Profile.find_by!(user_id: params[:id]) if params[:id]
    end

    def profile_params
      params.require(:profile).permit(:id, :user_id)
    end

    def authorize_profile!
      authorize(@profile || ::Users::Profile)
    end
  end
end
