module Sbds
  class Transfer < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_transfers'
  end
end
