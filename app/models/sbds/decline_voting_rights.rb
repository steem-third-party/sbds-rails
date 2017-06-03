module Sbds
  class DeclineVotingRights < ActiveRecord::Base
    include ActsAsTransaction
  end
end
