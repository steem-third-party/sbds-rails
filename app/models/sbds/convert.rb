module Sbds
  class Convert < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_converts'
  end
end
