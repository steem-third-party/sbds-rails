module Sbds
  class EscrowTransfer < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_escrow_transfers'
  end
end
