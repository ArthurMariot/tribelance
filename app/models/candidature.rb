class Candidature < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :mission, dependent: :destroy
end
