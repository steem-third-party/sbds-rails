module Sbds
  class WithdrawVesting < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_withdraw_vestings'
  end
end
