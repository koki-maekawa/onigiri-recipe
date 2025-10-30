class RiceBall < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    [ "title", "created_at", "updated_at", "user_id" ]
  end

  def self.ransackable_associations(auth_object = nil)
    [ "ingredients", "user" ]
  end
end
