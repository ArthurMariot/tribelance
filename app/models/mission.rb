class Mission < ApplicationRecord
  belongs_to :user
  has_many :candidatures
  validates :title, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { minimum: 40 }
  validates :headquarter, presence: true
  validates :daily_price, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :num_of_days, presence: true, numericality: { greater_than: 0, only_integer: true }
  mount_uploader :photo, PhotoUploader
end
