class Tag < ApplicationRecord
  has_many :rice_ball_tags, dependent: :destroy
  has_many :rice_balls, through: :rice_ball_tags
end
