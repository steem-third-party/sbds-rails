module Sbds
  class AccountUpdate < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_account_updates'
  end
end
