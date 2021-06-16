module Spree
  module Admin
    class SubscriptionConfigsController < Spree::Admin::BaseController
      def index
        @config = Spree::SubscriptionConfig.last || Spree::SubscriptionConfig.create(max_subscribers: 100)
      end

      def update
        puts params
      end
    end
  end
end
