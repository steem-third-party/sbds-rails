require 'test_helper'

module Sbds
  class CommentOptionsTest < ActiveSupport::TestCase
    def test_any
      assert CommentOptions.any?
    end
  end
end
