module Sbds
  class DelegateVestingShare < ActiveRecord::Base
    include ActsAsTransaction
  end
end
