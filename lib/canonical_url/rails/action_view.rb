module CanonicalURL
  module Rails
    module ActionView
      def canonical_link_tag url = nil
        return '' if url.nil? && @canonical_url.nil?
        tag("link", rel: "canonical", href: url.try(:html_safe) || @canonical_url.try(:html_safe))
      end
    end
  end
end
