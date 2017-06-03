module Sbds
  class LimitOrderCancel < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_limit_order_cancels'
  end
end
