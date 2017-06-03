module Sbds
  class CancelTransferFromSavings < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_cancel_transfer_from_savings'
  end
end
