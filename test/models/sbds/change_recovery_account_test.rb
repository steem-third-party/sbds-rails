require 'test_helper'

module Sbds
  class ChangeRecoveryAccountTest < ActiveSupport::TestCase
    def test_any
      assert ChangeRecoveryAccount.any?
    end
  end
end
