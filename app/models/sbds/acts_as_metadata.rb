module Sbds
  module ActsAsMetadata
    def self.included(base)
      def metadata
        JSON[json_metadata] rescue {}
      end
    end
  end
end
