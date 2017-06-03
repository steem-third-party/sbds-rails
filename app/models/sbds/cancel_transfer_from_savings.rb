module Sbds
  class CancelTransferFromSavings < ActiveRecord::Base
    include ActsAsTransaction
  end
end
