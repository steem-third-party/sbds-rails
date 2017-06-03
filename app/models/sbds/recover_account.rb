module Sbds
  class RecoverAccount < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_recover_accounts'
  end
end
