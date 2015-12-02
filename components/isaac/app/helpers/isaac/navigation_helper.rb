module Isaac
  module NavigationHelper
    def isaac_navigation
      render_navigation renderer: :bootstrap do |primary|
        primary.dom_class = 'nav nav-tabs'
        primary.selected_class = 'active'

        primary.item :key_1_1, t('navbar.tests'), isaac.tests_path, class: 'item'
        primary.item :key_1_2, t('navbar.metrics'), isaac.metrics_path, class: 'item'
      end
    end
  end
end