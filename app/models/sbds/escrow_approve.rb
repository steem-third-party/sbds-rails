module Sbds
  class EscrowApprove < ActiveRecord::Base
    include ActsAsTransaction
  end
end
