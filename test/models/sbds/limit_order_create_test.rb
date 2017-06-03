require 'test_helper'

module Sbds
  class LimitOrderCreateTest < ActiveSupport::TestCase
    def test_any
      assert LimitOrderCreate.any?
    end
  end
end
