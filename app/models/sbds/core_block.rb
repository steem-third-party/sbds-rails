module Sbds
  class CoreBlock < ActiveRecord::Base
    def self.table_name_prefix; 'sbds_'; end
  end
end
