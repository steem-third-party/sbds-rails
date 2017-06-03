module Sbds
  class ChangeRecoveryAccount < ActiveRecord::Base
    include ActsAsTransaction
  end
end
