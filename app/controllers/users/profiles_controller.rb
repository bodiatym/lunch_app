# frozen_string_literal: true

module Users
  class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile
    before_action :authorize_profile!

    def edit
      @facade = ::Profiles::EditFacade.new(@profile)
    end

    def update
      if ::Profiles::EditService.call(@profile, profile_params)
        flash[:success] = t '.success'
        redirect_to users_profile_path(@profile)
      else
        render :edit
      end
    end

    private

    private

    def set_profile
      @profile = ::Users::Profile.find(params[:id]) if params[:id]
    end

    def profile_params
      params.require(:users_profile).permit(:surname, :address, :phone, :id)
    end

    def authorize_profile!
      authorize(@profile || ::Users::Profile)
    end
  end
end
