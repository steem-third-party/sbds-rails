module Sbds
  class ChangeRecoveryAccount < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_change_recovery_accounts'
  end
end
