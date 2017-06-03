module Sbds
  class Vote < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_votes'
  end
end
