# frozen_string_literal: true

module Users
  class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile
    before_action :authorize_profile!

    def edit; end

    def update
      if @profile.update profile_params
        flash[:success] = t '.success'
        redirect_to users_profile_path(@profile)
      else
        render :edit
      end
    end

    def index; end

    def set_profile
      @profile = ::Users::Profile.find_by!(user_id: params[:id]) if params[:id]
    end

    private

    def profile_params
      params.require(:users_profile).permit(:surname, :address, :phone, :id, :users_id)
    end

    def authorize_profile!
      authorize(@profile || ::Users::Profile)
    end
  end
end
