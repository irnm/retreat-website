class Retreat < ApplicationRecord
  belongs_to :thread_admin
  has_many :users, through: :enrollments
  has_many :enrollments, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true, numericality: { greater_than: 1, less_than_or_equal_to: 999, only_integer: true }
end
