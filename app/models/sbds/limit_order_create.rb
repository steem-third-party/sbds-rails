module Sbds
  class LimitOrderCreate < ActiveRecord::Base
    include ActsAsTransaction
  end
end
