class Event < ApplicationRecord
  belongs_to :user, optional: true #ONLY FOR API CREATE ACTION - AUTH ISSUE
  has_and_belongs_to_many :categories
  has_many :photos, dependent: :destroy
  has_many :registrations, dependent: :destroy

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


# #A scope involving an SQL method which only allows events for between
# #two datetime values.
#
# scope :starts_before_ends_after, ->(starts_at, ends_at) {
#   where('starts_at < ? AND ends_at > ?', starts_at, starts_at)
# }
