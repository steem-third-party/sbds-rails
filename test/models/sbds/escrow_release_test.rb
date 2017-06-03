require 'test_helper'

module Sbds
  class EscrowReleaseTest < ActiveSupport::TestCase
    def test_any
      assert EscrowRelease.any?
    end
  end
end
