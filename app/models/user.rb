class User < ApplicationRecord
  has_many :rice_balls, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked_rice_balls, through: :bookmarks, source: :rice_ball

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[twitter2]

  validates :name, presence: true

  def already_bookmarked?(rice_ball)
    bookmarks.pluck(:rice_ball_id).include?(rice_ball.id)
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.nickname || auth.info.name
      user.email = auth.info.email || "#{auth.uid}@twitter.local"
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
