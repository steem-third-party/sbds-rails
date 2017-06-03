module Sbds
  class LimitOrderCancel < ActiveRecord::Base
    include ActsAsTransaction
  end
end
