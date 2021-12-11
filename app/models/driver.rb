class Driver < ApplicationRecord
  belongs_to :waste_company
  has_many :customers, dependent: :destroy
end
