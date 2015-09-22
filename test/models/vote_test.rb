require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_vote_validations
    x = Vote.new(voter_id: 1, candidate_id: 2)
    no_x = Voter.new()

    assert x.save
    refute no_x.save
  end

  def test_vote_has_candidate_voter_ids
    voter = Voter.create(name: "Leon", id: 1, party: "Democrat")
    candidate = Candidate.create(name: "Bill", hometown: "PBG", district: "Nine", party: "Democrat")
    vote = Vote.create(voter_id: voter.id, candidate_id: candidate.id)

    assert_equal candidate.id, vote.candidate_id
  end
end
