require 'test_helper'

module Sbds
  class ClaimRewardBalanceTest < ActiveSupport::TestCase
    def test_any
      assert ClaimRewardBalance.any?
    end
  end
end
