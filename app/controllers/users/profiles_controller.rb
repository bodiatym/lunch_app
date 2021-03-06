# frozen_string_literal: true

module Users
  class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile
    before_action :authorize_profile!
    before_action :set_edit_facade, only: %i[edit update]

    def edit; end

    def update
      return render :edit unless ::Profiles::EditService.call(@profile, profile_params)

      flash[:success] = t('flash.success')

      redirect_to users_profile_path(@profile)
    end

    private

    def set_edit_facade
      @facade = ::Profiles::EditFacade.new(@profile)
    end

    def set_profile
      @profile = current_user.profile
    end

    def profile_params
      params.require(:users_profile).permit(:surname, :address, :phone)
    end

    def authorize_profile!
      authorize(@profile || ::Users::Profile)
    end
  end
end
