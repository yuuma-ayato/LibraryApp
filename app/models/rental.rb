class Rental < ApplicationRecord
  validates :lending_start_date, presence: true
  validates :lending_end_date, presence: true

  belongs_to :user
  belongs_to :books
end
