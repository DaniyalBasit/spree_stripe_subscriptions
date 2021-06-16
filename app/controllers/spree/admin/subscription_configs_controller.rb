module Spree
  module Admin
    class SubscriptionConfigsController < Spree::Admin::BaseController
      def index
        @config = Spree::SubscriptionConfig.last || Spree::SubscriptionConfig.create(max_subscribers: 100)
      end

      def update
        @config = Spree::SubscriptionConfig.find_by(id: params[:id])
        @config.update(config_params)
        render :index
      end

      private

      def config_params
        params.require(:subscription_config).permit(:max_subscribers)
      end
    end
  end
end
