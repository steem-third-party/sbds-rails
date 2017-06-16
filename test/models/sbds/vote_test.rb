require 'test_helper'

module Sbds
  class VoteTest < ActiveSupport::TestCase
    def test_any
      assert Vote.any?
    end
    
    def test_related_comments
      assert Vote.first.comments.any?
    end
  end
end
