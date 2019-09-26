class Retreat < ApplicationRecord
  belongs_to :thread_admin
  has_many :users, through: :enrollments
  has_many :enrollments, dependent: :destroy
end
