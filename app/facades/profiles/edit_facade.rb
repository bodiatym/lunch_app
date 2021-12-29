# frozen_string_literal: true

module Profiles
  class EditFacade
    attr_reader :profile

    delegate :id, to: :profile, prefix: true
    delegate :user, to: :profile, prefix: true

    def initialize(profile)
      @profile = profile
    end

    def user_name
      profile_user.name
    end

  end
end
