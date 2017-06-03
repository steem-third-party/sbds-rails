module Sbds
  module ActsAsTransaction
    def self.included(base)
      def base.default_scope
        order(timestamp: :asc)
      end
      
      base.scope :block, lambda { |block_num|
        where(block_num: block_num)
      }
      
      base.scope :starting, lambda { |with, field = :timestamp, not_inverted = true|
        r = where(field => with..Time.now.utc)
        
        not_inverted ? r : where.not(r)
      }

      base.scope :ending, lambda { |with, field = :timestamp, not_inverted = true|
        r = where(field => Time.at(0)..with)
        
        not_inverted ? r : where.not(r)
      }

      base.scope :betwixt, lambda { |starting, ending, field = :timestamp, not_inverted = true|
        r = where(field => starting..ending)
        
        not_inverted ? r : where.not(r)
      }

      base.scope :today, lambda { |field = :timestamp|
        starting(1.day.ago.utc, field)
      }

      base.scope :yesterday, lambda { |field = :timestamp|
        betwixt(2.days.ago.utc, 1.day.ago.utc, field)
      }
    end
  end
end
