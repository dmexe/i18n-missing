module I18n ; module Missing
  class Railtie < Rails::Railtie
    initializer "i18n.missing" do
      if %w{ development test }.include?(Rails.env)
        require File.expand_path("../backend", __FILE__)
      end
    end
  end
end ; end
