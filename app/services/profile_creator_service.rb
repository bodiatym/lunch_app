# frozen_string_literal: true

class ProfileCreatorService < ApplicationService
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def call
    Users::Profile.create(user: @user)
  end
end

