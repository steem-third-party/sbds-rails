require 'test_helper'

module Sbds
  class WithdrawVestingRouteTest < ActiveSupport::TestCase
    def test_any
      assert WithdrawVestingRoute.any?
    end
  end
end
