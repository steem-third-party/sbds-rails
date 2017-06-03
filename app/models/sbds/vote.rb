module Sbds
  class Vote < ActiveRecord::Base
    include ActsAsTransaction
  end
end
