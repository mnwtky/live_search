class Event < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
  belongs_to_active_hash :genre

  validates :title, :price, :genre_id, :area_id, :address, :event_date, :opening_time, :start_time, :end_time, presence: true
  validates :price, numericality: { with: /\A[0-9]+\z/, message: 'は半角数字で入力してください' }
  
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
end
