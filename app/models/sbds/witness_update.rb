module Sbds
  class WitnessUpdate < ActiveRecord::Base
    include ActsAsTransaction
  end
end
