module Sbds
  class EscrowTransfer < ActiveRecord::Base
    include ActsAsTransaction
  end
end
