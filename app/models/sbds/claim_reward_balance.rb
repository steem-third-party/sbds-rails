module Sbds
  class ClaimRewardBalance < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_claim_reward_balances'
  end
end
