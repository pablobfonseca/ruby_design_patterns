require 'minitest/autorun'
require './generators/base'
require './generators/html'
require './generators/markdown'

module Newsletter
  describe Generators::Base do
    it 'generates a newsletter in HTML' do
      final_result = File.read File.expand_path("fixtures/newsletter.html", File.dirname(__FILE__))
      Generators::Base.new(:html).render.must_include final_result
    end

    it 'generates a report in Markdown' do
      final_result = File.read File.expand_path("fixtures/newsletter.md", File.dirname(__FILE__))
      Generators::Base.new(:markdown).render.must_include final_result
    end
  end
end
