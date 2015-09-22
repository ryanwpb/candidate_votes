require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_voter_has_name
    v = Voter.new(name: "Leon")
    assert v.name != "Tom"
    assert v.name == "Leon"
  end

  def test_voter_validations
    v = Voter.new(name: "Leon", id: 1, party: "Democrat")
    bad_v = Voter.new()

    assert v.save
    refute bad_v.save
  end
end
