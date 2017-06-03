module Sbds
  class WithdrawVestingRoute < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_withdraw_vesting_routes'
  end
end
