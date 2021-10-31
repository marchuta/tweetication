class Tweet < ApplicationRecord

  validates :sentence, presence: true
  

  belomgs_to :user
  has_one_attached :image
end
