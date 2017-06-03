require 'test_helper'

module Sbds
  class VoteTest < ActiveSupport::TestCase
    def test_any
      assert Vote.any?
    end
  end
end
