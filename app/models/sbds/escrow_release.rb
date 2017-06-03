module Sbds
  class EscrowRelease < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_escrow_releases'
  end
end
