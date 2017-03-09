module CanonicalURL
  module Rails
    module ActionController
      extend ActiveSupport::Concern

      module ClassMethods
        def canonical_url url, filter_options = {}
          before_action(filter_options) do |controller|
            controller.send :canonical_url, url
          end
        end
      end

      protected

      def canonical_url url
        @canonical_url = case url
                         when Proc then url.call(self)
                         else url ? url_for(url) : nil
                         end
      end
    end
  end
end
