class Fine < ApplicationRecord
  has_many :offers , dependent: :destroy
  belongs_to :user

  validates :fine_deadline, presence: true
  validates :point, presence: true
  validates :price, presence: true
  validates :reason, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :fine_offer, presence: true

end












