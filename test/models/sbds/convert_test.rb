require 'test_helper'

module Sbds
  class ConvertTest < ActiveSupport::TestCase
    def test_any
      assert Convert.any?
    end
  end
end
