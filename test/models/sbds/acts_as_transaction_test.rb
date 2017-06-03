require 'test_helper'

module Sbds
  class ActsAsTransactionTest < ActiveSupport::TestCase
    def test_block
      assert Vote.block(12466776).any?
    end
    
    def test_today
      assert Vote.today.any?
    end
    
    def test_yesterday
      assert Vote.yesterday.any?
    end
    
    def test_ending
      assert Vote.ending(5.days.ago).any?
    end
  end
end
