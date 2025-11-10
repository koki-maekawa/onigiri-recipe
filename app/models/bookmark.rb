class Bookmark < ApplicationRecord
  belongs_to :rice_ball
  belongs_to :user

  validates :user_id, uniqueness: { scope: :rice_ball_id }
end
