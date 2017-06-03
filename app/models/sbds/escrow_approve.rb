module Sbds
  class EscrowApprove < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_escrow_approves'
  end
end
