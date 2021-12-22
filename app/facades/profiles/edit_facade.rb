# frozen_string_literal: true

module Profiles
  class EditFacade
    attr_reader :profile

    def initialize(profile)
      @profile = profile
    end

    def id
      @id = profile.id
    end

    def user_name
      @user_name = profile.user.name
    end
  end
end
