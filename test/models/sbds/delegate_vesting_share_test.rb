require 'test_helper'

module Sbds
  class DelegateVestingShareTest < ActiveSupport::TestCase
    def test_any
      assert DelegateVestingShare.any?
    end
  end
end
