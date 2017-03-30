require 'forwardable'

module Newsletter
  module Generators
    class Html
      extend Forwardable

      def_delegators :@context, :title, :phrase

      def initialize(context)
        @context = context
      end

      def execute
        <<~EOF
        #{header}

        #{content}
        EOF
      end

      def header
        "<h1>#{title}</h1>"
      end

      def content
        <<-EOF
<div class="content">
  <p>#{phrase}</p>
</div>
        EOF
      end

      def phrase
        "Lorem Ipsum"
      end
    end
  end
end
