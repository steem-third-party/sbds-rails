module Sbds
  class DeleteComment < ActiveRecord::Base
    include ActsAsTransaction
  end
end
