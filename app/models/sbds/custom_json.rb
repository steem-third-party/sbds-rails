module Sbds
  class CustomJson < ActiveRecord::Base
    include ActsAsTransaction
  end
end
