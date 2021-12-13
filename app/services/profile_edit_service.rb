# frozen_string_literal: true

class ProfileEditService < ApplicationService
  attr_reader :user

  def initialize(profile, params)
    super()
    @profile = profile
    @params = params
  end

  def call
    @profile.update(@params)
  end
end
