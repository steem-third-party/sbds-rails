module Sbds
  class AccountWitnessProxy < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_account_witness_proxies'
  end
end
