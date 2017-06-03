require 'test_helper'

module Sbds
  class FeedPublishTest < ActiveSupport::TestCase
    def test_any
      assert FeedPublish.any?
    end
  end
end
