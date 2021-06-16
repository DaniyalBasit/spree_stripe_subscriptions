module Spree
  class SubscriptionConfig < Spree::Base
    validates :max_subscribers, numericality: { greater_than: 0 }
  end  
end
