require 'test_helper'

module Sbds
  class CommentOptionsTest < ActiveSupport::TestCase
    def test_any
      assert CommentOptions.any?
    end
    
    def test_beneficiaries
      author = 'a9933'
      permlink = 're-paulo0-2017510t213343675z'
      options = CommentOptions.find_by(author: author, permlink: permlink)
      assert options.beneficiaries.any?
    end
  end
end
