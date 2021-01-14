class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true

  has_many :events
  has_many :likes, dependent: :destroy
  has_many :liked_events, through: :likes, source: :event

  def liked_by?(event_id)
    likes.where(event_id: event_id).exists?
  end
end
