require 'test_helper'

module Sbds
  class AccountWitnessVoteTest < ActiveSupport::TestCase
    def test_any
      assert AccountWitnessVote.any?
    end
  end
end
