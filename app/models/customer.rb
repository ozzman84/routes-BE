class Customer < ApplicationRecord
  belongs_to :driver
  has_many :locations
end
