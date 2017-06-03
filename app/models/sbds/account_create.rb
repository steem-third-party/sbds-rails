module Sbds
  class AccountCreate < ActiveRecord::Base
    include ActsAsTransaction
  end
end
