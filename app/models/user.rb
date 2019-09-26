class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :retreats, through: :enrollments
  has_many :enrollments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
