class ThreadAdmin < ApplicationRecord
  belongs_to :user
  has_many :retreats
end
