class Mission < ApplicationRecord
  belongs_to :user
  has_many :candidatures
  validates :title, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { minimum: 40 }
  validates :daily_price, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :headquarter, presence: true
  validates :num_of_days, presence: true, numericality: { greater_than: 0, only_integer: true }
end
