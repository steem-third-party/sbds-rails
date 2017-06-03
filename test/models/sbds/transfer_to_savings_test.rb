require 'test_helper'

module Sbds
  class TransferToSavingsTest < ActiveSupport::TestCase
    def test_any
      assert TransferToSavings.any?
    end
  end
end
