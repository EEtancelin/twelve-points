class Fine < ApplicationRecord
  has_many :offers , dependent: :destroy
  belongs_to :user

end
