require 'test_helper'

module Sbds
  class CommentTest < ActiveSupport::TestCase
    def test_any
      assert Comment.any?
    end
  end
end
