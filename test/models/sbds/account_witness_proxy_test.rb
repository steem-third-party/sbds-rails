require 'test_helper'

module Sbds
  class AccountWitnessProxyTest < ActiveSupport::TestCase
    def test_any
      assert AccountWitnessProxy.any?
    end
  end
end
