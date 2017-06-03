require 'test_helper'

module Sbds
  class EscrowDisputeTest < ActiveSupport::TestCase
    def test_any
      assert EscrowDispute.any?
    end
  end
end
