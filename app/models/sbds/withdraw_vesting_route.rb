module Sbds
  class WithdrawVestingRoute < ActiveRecord::Base
    include ActsAsTransaction
  end
end
