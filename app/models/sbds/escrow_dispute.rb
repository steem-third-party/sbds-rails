module Sbds
  class EscrowDispute < ActiveRecord::Base
    include ActsAsTransaction
  end
end
