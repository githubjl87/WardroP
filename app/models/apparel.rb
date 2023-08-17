class Apparel < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo

  validates :name, presence: true
  validates :size, presence: true, inclusion: { in: %w[xxs xs s m l xl xxl] }
  validates :category, presence: true, inclusion: { in: ["business", "party", "holiday", "wedding", "casual", "other"] }
  validates :price, presence: true
  validates :overview, length: { minimum: 10, maximum: 100 }, allow_blank: false

  def self.search(query)
    where("CONCAT(name, category, overview, size) ILIKE ?", "%#{query}%")
  end
end

# seed
# user
# apparel
# rental
# email from team
