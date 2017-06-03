require 'test_helper'

module Sbds
  class CustomTest < ActiveSupport::TestCase
    def test_any
      refute Custom.any?
    end
  end
end
