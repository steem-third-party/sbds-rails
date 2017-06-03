require 'test_helper'

module Sbds
  class DeclineVotingRightsTest < ActiveSupport::TestCase
    def test_any
      refute DeclineVotingRights.any?
    end
  end
end
