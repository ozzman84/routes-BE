class WasteCompany < ApplicationRecord
  has_many :drivers, dependent: :destroy
end
