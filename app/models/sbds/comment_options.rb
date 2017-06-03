module Sbds
  class CommentOptions < ActiveRecord::Base
    include ActsAsTransaction
    def self.table_name; 'sbds_tx_comments_options'; end
  end
end
