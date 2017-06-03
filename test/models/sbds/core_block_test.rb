require 'test_helper'

module Sbds
  class CoreBlockTest < ActiveSupport::TestCase
    def test_any
      assert CoreBlock.any?
    end
  end
end
