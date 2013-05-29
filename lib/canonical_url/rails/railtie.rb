module CanonicalURL
  module Rails
    class Railtie < ::Rails::Railtie
      initializer "canonical_url.initialize" do
        ActiveSupport.on_load(:action_controller) do
          include CanonicalURL::Rails::ActionController
        end

        ActiveSupport.on_load(:action_view) do
          include CanonicalURL::Rails::ActionView
        end
      end
    end
  end
end
