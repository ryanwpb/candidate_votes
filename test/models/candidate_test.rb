require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  def test_candidate_has_name
    candidate = Candidate.new(name: "Bill")
    assert candidate.name != "Tom"
    assert candidate.name == "Bill"
  end

  def test_candidate_validations
    candidate = Candidate.new(name: "Bill", hometown: "PBG", district: "Nine", party: "Democrat")
    bad_candidate = Candidate.new()

    assert candidate.save
    refute bad_candidate.save
  end

  
end
