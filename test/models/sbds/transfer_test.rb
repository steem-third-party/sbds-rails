require 'test_helper'

module Sbds
  class TransferTest < ActiveSupport::TestCase
    def test_any
      assert Transfer.any?
    end
  end
end
