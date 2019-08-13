class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :candidatures
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :missions
  validates :first_name, :last_name, presence: true
end
