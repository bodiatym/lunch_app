module Users
  class Profile < ApplicationRecord
    belongs_to :user
  end
end
