module NavigationHelper
  def main_navigation
    render_navigation renderer: :bootstrap do |primary|
      primary.dom_class = 'nav navbar-nav'
      primary.selected_class = 'active'

      primary.item :key_1_1, t('navbar.isaac'), isaac.root_path, class: 'item'
    end
  end
end