require 'test_helper'

module Sbds
  class EscrowTransferTest < ActiveSupport::TestCase
    def test_any
      assert EscrowTransfer.any?
    end
  end
end
