module Sbds
  class AccountWitnessProxy < ActiveRecord::Base
    include ActsAsTransaction
  end
end
