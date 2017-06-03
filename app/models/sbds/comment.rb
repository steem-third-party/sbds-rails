module Sbds
  class Comment < ActiveRecord::Base
    include ActsAsTransaction
  end
end
