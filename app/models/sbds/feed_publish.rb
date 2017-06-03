module Sbds
  class FeedPublish < ActiveRecord::Base
    include ActsAsTransaction
    self.table_name = 'sbds_tx_feed_publishes'
  end
end
