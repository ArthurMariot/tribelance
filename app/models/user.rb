class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  URL_REGEXP = /(https?)?:?(\/\/)?(([w]{3}||\w\w)\.)?linkedin.com(\w+:{0,1}\w*@)?(\S+)(:([0-9])+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
  has_many :candidatures
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :missions
  validates :first_name, :last_name, :linkedinurl, :avatar, presence: true
  validates :linkedinurl, uniqueness: { case_sensitive: false }, format: { with: Regexp.new('\A' + URL_REGEXP.source + '\z') }
  mount_uploader :avatar, AvatarUploader
end
