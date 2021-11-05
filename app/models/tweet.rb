class Tweet < ApplicationRecord

  validates :sentence, presence: true
  

  belongs_to :user
  has_one_attached :image
end
