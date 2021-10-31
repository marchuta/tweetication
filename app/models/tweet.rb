class Tweet < ApplicationRecord
  belomgs_to :user
  has_one_attached :image
end
