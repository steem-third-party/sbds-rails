module Sbds
  class EscrowRelease < ActiveRecord::Base
    include ActsAsTransaction
  end
end
