module Sbds
  class Pow < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_pows'
  end
end
