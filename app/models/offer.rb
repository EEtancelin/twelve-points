class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :fine

  validates :deadline, presence: true
  validates :user_id, presence: true
  validates :fine_id, presence: true

  end

end
