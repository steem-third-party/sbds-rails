module Sbds
  class Convert < ActiveRecord::Base
    include ActsAsTransaction
  end
end
