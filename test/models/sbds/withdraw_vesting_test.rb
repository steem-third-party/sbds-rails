require 'test_helper'

module Sbds
  class WithdrawVestingTest < ActiveSupport::TestCase
    def test_any
      assert WithdrawVesting.any?
    end
  end
end
