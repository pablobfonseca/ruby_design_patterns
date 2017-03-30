require 'minitest/autorun'
require './generator'
require './generators/html'
require './generators/markdown'

module Newsletter
  describe Generators do
    it 'generates a newsletter in HTML' do
      final_result = File.read File.expand_path("fixtures/newsletter.html", File.dirname(__FILE__))
      Generators::Html.new.render.must_include final_result
    end

    it 'generates a report in Markdown' do
      final_result = File.read File.expand_path("fixtures/newsletter.md", File.dirname(__FILE__))
      Generators::Markdown.new.render.must_include final_result
    end

    it 'fails to render if calling the base generator class' do
      -> { Generator.new.header }.must_raise NotImplementedError
      -> { Generator.new.content }.must_raise NotImplementedError
    end
  end
end
