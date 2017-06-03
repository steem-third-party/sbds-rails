require 'test_helper'

module Sbds
  class CustomJsonTest < ActiveSupport::TestCase
    def test_any
      assert CustomJson.any?
    end
  end
end
