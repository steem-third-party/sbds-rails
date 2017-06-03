module Sbds
  class AccountWitnessVote < ActiveRecord::Base
    include ActsAsTransaction
  end
end
