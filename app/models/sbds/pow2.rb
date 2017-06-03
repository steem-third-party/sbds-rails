module Sbds
  class Pow2 < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_pow2s'
  end
end
