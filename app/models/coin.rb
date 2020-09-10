class Coin < ApplicationRecord
  has_one :jar_coin
  has_many :jars, through: :jar_coin
end
