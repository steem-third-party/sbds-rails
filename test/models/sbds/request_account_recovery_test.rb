require 'test_helper'

module Sbds
  class RequestAccountRecoveryTest < ActiveSupport::TestCase
    def test_any
      assert RequestAccountRecovery.any?
    end
  end
end
