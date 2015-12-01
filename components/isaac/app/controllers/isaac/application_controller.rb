module Isaac
  class ApplicationController < ::ApplicationController
    helper Isaac::NavigationHelper

    def current_author
      send(Isaac.current_author_helper)
    end

    helper_method :current_author
  end
end
