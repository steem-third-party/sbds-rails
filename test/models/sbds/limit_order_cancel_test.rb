require 'test_helper'

module Sbds
  class LimitOrderCancelTest < ActiveSupport::TestCase
    def test_any
      assert LimitOrderCancel.any?
    end
  end
end
