# frozen_string_literal: true

module Users
  class Profile < ApplicationRecord
    belongs_to :user
  end
end
