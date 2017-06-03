module Sbds
  class WithdrawVesting < ActiveRecord::Base
    include ActsAsTransaction
  end
end
