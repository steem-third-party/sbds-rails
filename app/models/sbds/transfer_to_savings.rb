module Sbds
  class TransferToSavings < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_transfer_to_savings'
  end
end
