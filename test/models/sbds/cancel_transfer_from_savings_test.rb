require 'test_helper'

module Sbds
  class CancelTransferFromSavingsTest < ActiveSupport::TestCase
    def test_any
      assert CancelTransferFromSavings.any?
    end
  end
end
