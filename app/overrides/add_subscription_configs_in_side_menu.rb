Deface::Override.new(
  virtual_path: 'spree/admin/shared/_main_menu',
  name: 'add_stripe_info_to_user_edit',
  insert_after: "ul#sidebarProduct",
  text: "
    <ul class='nav nav-sidebar border-bottom' id='sidebarSubscriptionConfig'>
      <%= main_menu_tree(
        'Subscription Configs',
        icon: 'products.svg',
        sub_menu: 'subscription_config',
        url: admin_subscription_configs_path)
      %>
    </ul>
  "
)
