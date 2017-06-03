module Sbds
  class TransferFromSavings < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_transfer_from_savings'
  end
end
