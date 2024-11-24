class Restaurant < ApplicationRecord
  belongs_to :user
  validates :address, :menu, :price_range, :opening_hours, presence: true
end
