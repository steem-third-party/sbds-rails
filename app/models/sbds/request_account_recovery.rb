module Sbds
  class RequestAccountRecovery < ActiveRecord::Base
    include ActsAsTransaction
  end
end
