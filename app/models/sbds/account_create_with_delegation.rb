module Sbds
  class AccountCreateWithDelegation < ActiveRecord::Base
    include ActsAsTransaction
  end
end
