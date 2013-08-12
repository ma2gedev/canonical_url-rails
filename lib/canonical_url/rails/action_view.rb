module CanonicalURL
  module Rails
    module ActionView
      def canonical_link_tag url = nil
        return '' if url.nil? && @canonical_url.nil?
        tag("link", rel: "canonical", href: url.html_safe || @canonical_url.html_safe)
      end
    end
  end
end
