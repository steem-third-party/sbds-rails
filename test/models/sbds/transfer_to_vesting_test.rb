require 'test_helper'

module Sbds
  class TransferToVestingTest < ActiveSupport::TestCase
    def test_any
      assert TransferToVesting.any?
    end
  end
end
