module Sbds
  class CommentOptions < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_comments_options'
  end
end
