require 'test_helper'

module Sbds
  class WitnessUpdateTest < ActiveSupport::TestCase
    def test_any
      assert WitnessUpdate.any?
    end
  end
end
