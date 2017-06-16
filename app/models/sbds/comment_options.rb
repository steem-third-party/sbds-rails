module Sbds
  class CommentOptions < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_comments_options'
    
    def beneficiaries
      @raw ||= CoreBlock.find_by(block_num: block_num).raw
      b = JSON[@raw]
      tx = b['transactions'][transaction_num - 1]
      op = tx['operations'][operation_num - 1].last
      op['extensions'].last.last['beneficiaries'] rescue []
    end
  end
end
