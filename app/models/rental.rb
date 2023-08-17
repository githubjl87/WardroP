class Rental < ApplicationRecord
  enum status: { pending: "pending", accepted: "accepted", delivered: "delivered", rejected: "rejected" }

  belongs_to :user
  belongs_to :apparel

  validates :start_date, presence: true
  validates :end_date, presence: true

  # def pending?
  #   status == 'pending'
  # end
end
