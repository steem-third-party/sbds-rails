module Sbds
  class AccountUpdate < ActiveRecord::Base
    include ActsAsTransaction
  end
end
