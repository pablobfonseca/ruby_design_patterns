module Newsletter
  module Generators
    class Html < Generator
      def header
        "<h1>Hello World</h1>"
      end

      def content
        <<-EOF
<div class="content">
  <p>Lorem Ipsum</p>
</div>
        EOF
      end

      def phrase
        "Lorem Ipsum"
      end
    end
  end
end
