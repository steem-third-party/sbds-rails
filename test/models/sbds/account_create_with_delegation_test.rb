require 'test_helper'

module Sbds
  class AccountCreateWithDelegationTest < ActiveSupport::TestCase
    def test_any
      assert AccountCreateWithDelegation.any?
    end
  end
end
