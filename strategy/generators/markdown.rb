require 'forwardable'

module Newsletter
  module Generators
    class Markdown
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
        "# #{title}"
      end

      def content
        phrase
      end
    end
  end
end
