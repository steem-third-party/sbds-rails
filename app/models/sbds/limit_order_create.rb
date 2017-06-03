module Sbds
  class LimitOrderCreate < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_limit_order_creates'
  end
end
