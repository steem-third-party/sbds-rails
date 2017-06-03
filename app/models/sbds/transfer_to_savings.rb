module Sbds
  class TransferToSavings < ActiveRecord::Base
    include ActsAsTransaction
  end
end
