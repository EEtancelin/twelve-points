class Fine < ApplicationRecord
  has_many :offer , dependent: :destroy
  belongs_to :user
end
