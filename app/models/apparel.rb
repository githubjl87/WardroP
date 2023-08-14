class Apparel < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :name, presence: true
  validates :size, presence: true, inclusion: { in: %w[XXS XS S M L XL XXL] }
  validates :category, presence: true, inclusion: { in: ["Business", "Party", "Holiday", "Wedding Guest", "Others"] }
  validates :price, presence: true
  validates :overview, length: { minimum: 10, maximum: 100 }, allow_blank: false
end

# seed
# user
# apparel
# rental
# email from team
