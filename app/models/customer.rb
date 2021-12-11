class Customer < ApplicationRecord
  belongs_to :driver
  has_many :locations, dependent: :destroy
end
