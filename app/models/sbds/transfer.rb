module Sbds
  class Transfer < ActiveRecord::Base
    include ActsAsTransaction
  end
end
