require 'test_helper'

module Sbds
  class PowTest < ActiveSupport::TestCase
    def test_any
      assert Pow.any?
    end
  end
end
