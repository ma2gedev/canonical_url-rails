module CanonicalURL
  module Rails
    module ActionView
      def canonical_link_tag url = nil
        return '' if url.nil? && @canonical_url.nil?
        tag("link", rel: "canonical", href: url || @canonical_url)
      end
    end
  end
end
