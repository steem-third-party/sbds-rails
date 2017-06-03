module Sbds
  class Custom < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_customs'
  end
end
