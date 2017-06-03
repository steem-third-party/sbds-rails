require 'test_helper'

module Sbds
  class AccountCreateTest < ActiveSupport::TestCase
    def test_any
      assert AccountCreate.any?
    end
  end
end
