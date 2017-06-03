module Sbds
  class EscrowDispute < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_escrow_disputes'
  end
end
