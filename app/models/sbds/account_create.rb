module Sbds
  class AccountCreate < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_account_creates'
  end
end
