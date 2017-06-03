module Sbds
  class AccountWitnessVote < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_account_witness_votes'
  end
end
