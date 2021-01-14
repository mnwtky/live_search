class Event < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
  belongs_to_active_hash :genre

  validates :title, :price, :address, :event_date, :opening_time, :start_time, :end_time, presence: true

  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
end
