module Sbds
  class Vote < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_votes'
    
    def comments
      Comment.where(author: author, permlink: permlink)
    end
  end
end
