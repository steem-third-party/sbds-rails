module Sbds
  class RecoverAccount < ActiveRecord::Base
    include ActsAsTransaction
  end
end
