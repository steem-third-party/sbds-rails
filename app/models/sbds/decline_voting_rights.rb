module Sbds
  class DeclineVotingRights < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_decline_voting_rights'
  end
end
