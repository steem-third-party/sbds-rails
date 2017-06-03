module Sbds
  class TransferToVesting < ActiveRecord::Base
    include ActsAsTransaction
  end
end
