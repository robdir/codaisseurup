class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
MAXIMUM_BARGAIN_PRICE = 29

validates :name, presence: true
validates :description, presence: true, length: { maximum: 500 }

  def bargain?
    price <= MAXIMUM_BARGAIN_PRICE
  end

  def self.order_by_price
    order :price
  end
end
