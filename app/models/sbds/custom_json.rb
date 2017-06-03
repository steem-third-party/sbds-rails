module Sbds
  class CustomJson < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_custom_jsons'
  end
end
