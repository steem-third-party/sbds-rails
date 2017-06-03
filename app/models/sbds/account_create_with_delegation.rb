module Sbds
  class AccountCreateWithDelegation < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_account_create_with_delegations'
  end
end
