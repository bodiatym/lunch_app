# frozen_string_literal: true

module Profiles
  class EditService < ApplicationService
    def initialize(profile, params)
      super()
      @profile = profile
      @params  = params
    end

    def call
      @profile.update(@params)
    end
  end
end
