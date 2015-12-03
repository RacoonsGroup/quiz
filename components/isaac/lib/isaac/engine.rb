module Isaac
  class Engine < ::Rails::Engine
    isolate_namespace Isaac

    config.to_prepare do
      #services require
      Dir.glob(Rails.root + 'app/services/**/**/*.rb').each do |c|
        require_dependency(c)
      end
    end
  end
end
