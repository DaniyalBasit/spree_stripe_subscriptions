class CreateSpreeSubscriptionConfigs < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_subscription_configs do |t|
      t.integer :max_subscribers

      t.timestamps
    end
  end
end
