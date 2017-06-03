module Sbds
  class Custom < ActiveRecord::Base
    include ActsAsTransaction
  end
end
