module Sbds
  class FeedPublish < ActiveRecord::Base
    include ActsAsTransaction
  end
end
