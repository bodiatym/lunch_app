# frozen_string_literal: true

module Profiles
  class EditFacade
    attr_reader :profile

    delegate :id, to: :profile, prefix: true
    delegate :user, to: :profile, prefix: true
    delegate :name, to: :profile_user, prefix: :user

    def initialize(profile)
      @profile = profile
    end
  end
end
