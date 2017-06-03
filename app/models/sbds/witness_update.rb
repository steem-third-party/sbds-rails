module Sbds
  class WitnessUpdate < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_witness_updates'
  end
end
