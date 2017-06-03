module Sbds
  class Comment < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_comments'
  end
end
