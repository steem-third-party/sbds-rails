require 'test_helper'

module Sbds
  class EscrowApproveTest < ActiveSupport::TestCase
    def test_any
      assert EscrowApprove.any?
    end
  end
end
