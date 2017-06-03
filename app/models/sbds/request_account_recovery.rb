module Sbds
  class RequestAccountRecovery < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_request_account_recoveries'
  end
end
