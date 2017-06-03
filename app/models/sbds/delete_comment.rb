module Sbds
  class DeleteComment < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_delete_comments'
  end
end
