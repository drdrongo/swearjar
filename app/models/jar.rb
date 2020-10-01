class Jar < ApplicationRecord
  belongs_to :user
  has_many :coins, dependent: :destroy
end
