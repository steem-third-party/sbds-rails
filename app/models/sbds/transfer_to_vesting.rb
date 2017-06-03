module Sbds
  class TransferToVesting < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_transfer_to_vestings'
  end
end
