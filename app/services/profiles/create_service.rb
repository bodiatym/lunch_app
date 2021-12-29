# frozen_string_literal: true

module Profiles
  class CreateService < ApplicationService
    attr_reader :user

    def initialize(user)
      super()
      @user = user
    end

    def call
      Users::Profile.create(user: user)
    end
  end
end
