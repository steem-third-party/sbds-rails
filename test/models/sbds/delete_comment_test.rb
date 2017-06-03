require 'test_helper'

module Sbds
  class DeleteCommentTest < ActiveSupport::TestCase
    def test_any
      assert DeleteComment.any?
    end
  end
end
