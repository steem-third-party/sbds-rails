require 'test_helper'

module Sbds
  class RecoverAccountTest < ActiveSupport::TestCase
    def test_any
      assert RecoverAccount.any?
    end
  end
end
