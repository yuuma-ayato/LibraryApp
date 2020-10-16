class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :author, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 500 }

  has_many :rentals, dependent: :destroy
  has_many :rental_users, through: :rentals, source: :user
  accepts_nested_attributes_for :rentals, allow_destroy: true, reject_if: :all_blank
end
