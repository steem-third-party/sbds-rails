require 'test_helper'

module Sbds
  class AccountUpdateTest < ActiveSupport::TestCase
    def test_any
      assert AccountUpdate.any?
    end
  end
end
