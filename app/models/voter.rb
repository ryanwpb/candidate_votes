class Voter < ActiveRecord::Base
  has_one :vote
  validates :name, :party, presence: true
  validates :name, uniqueness: true
end
