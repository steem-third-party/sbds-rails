module Sbds
  class TransferFromSavings < ActiveRecord::Base
    include ActsAsTransaction
  end
end
