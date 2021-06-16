module Spree
  class StripeSubscriptionConfig < Spree::Base
    validates :max_subscribers, numericality: { greater_than: 0 }
  end  
end
