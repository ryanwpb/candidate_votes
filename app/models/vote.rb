class Vote < ActiveRecord::Base
  belongs_to :candidates
  validates :voter_id, :candidate_id, presence: true
end
