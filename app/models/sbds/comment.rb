module Sbds
  class Comment < ActiveRecord::Base
    include ActsAsTransaction
    include ActsAsMetadata
    self.table_name = 'sbds_tx_comments'
    
    scope :post, -> { where(parent_author: '') }
    scope :comment, -> { where.not(parent_author: '') }
    scope :diff, lambda { |diff = true|
      if diff
        where('sbds_tx_comments.body LIKE ?', '@@ %')
      else
        where('sbds_tx_comments.body NOT LIKE ?', '@@ %')
      end
    }
    scope :app, lambda { |app|
      where('sbds_tx_comments.json_metadata LIKE ?', "%\"app\":%\"#{app}/%")
    }
    
    def edits
      Comment.where(author: author, permlink: permlink).
        where.not(block_num: block_num)
    end
    
    def options
      CommentOptions.where(author: author, permlink: permlink).first
    end
    
    def votes
      Vote.where(author: author, permlink: permlink)
    end
    
    def upvotes
      votes.where('sbds_tx_votes.weight > 0')
    end
    
    def downvotes
      votes.where('sbds_tx_votes.weight < 0')
    end
    
    def unvotes
      votes.where('sbds_tx_votes.weight = 0')
    end
  end
end
