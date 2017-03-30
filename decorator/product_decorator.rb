require 'forwardable'

class ProductDecorator
  extend Forwardable

  def_delegators :@context, :name, :category, :tags

  def initialize(context)
    @context = context
  end

  def as_html_row
    <<~EOF
    <tr>
      <th>#{name}</th>
      <td>#{category.to_s}</td>
      <td>
        #{tags_list}
      </td>
    </tr>
    EOF
  end

  def tags_list
    <<~EOF
     <ul>
      #{tags.map {|tag| "<li>#{tag}</li>"}.join("")}
     </ul>
    EOF
  end
end
