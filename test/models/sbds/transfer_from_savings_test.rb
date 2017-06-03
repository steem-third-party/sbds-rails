require 'test_helper'

module Sbds
  class TransferFromSavingsTest < ActiveSupport::TestCase
    def test_any
      assert TransferFromSavings.any?
    end
  end
end
