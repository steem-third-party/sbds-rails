module Sbds
  class DelegateVestingShare < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_delegate_vesting_shares'
  end
end
