require 'test_helper'

module Sbds
  class CommentTest < ActiveSupport::TestCase
    def test_introduceyourself_youtube
      match = <<-DONE
        parent_permlink = "introduceyourself"
        AND json_metadata LIKE "%\\"youtube\\"%"
        AND parent_author = ""
      DONE
      
      comments = Comment.starting(1.month.ago)
      comments = comments.where(match)
      comments = comments.select(:author)
      authors = comments.pluck(:author).uniq
      
      refute_equal [''], authors
    end
    
    def test_diff
      assert Comment.diff.any?
      assert Comment.diff(false).any?
    end
    
    def test_app
      assert Comment.app('steemit').any?
    end
    
    def test_edits
      assert Comment.first.edits
    end
    
    def test_metadata
      assert Comment.first.metadata
    end
    
    def test_options
      assert Comment.last.options.any?
    end 
    
    def test_votes
      assert Comment.first.votes.any?
    end
    
    def test_upvotes
      assert Comment.first.upvotes.any?
    end
    
    def test_downvotes
      assert Comment.first.downvotes.any?
    end
    
    def test_unvotes
      assert Comment.first.unvotes.any?
    end
  end
end
