require 'test_helper'

module Sbds
  class Pow2Test < ActiveSupport::TestCase
    def test_any
      assert Pow2.any?
    end
  end
end
