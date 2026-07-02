module Sukashi
  class HtmlEditor

    def initialize(html)
      @html = html
      @doc = Nokogiri::HTML5(html)
    end

    def add_stylesheet(style)
      node = Nokogiri::XML::Node.new('style', @doc)
      node['type'] = 'text/css'
      node.content = style
      @doc.at('head').add_child(node)
    end

    def add_watermark(text, **attributes)
      node = Nokogiri::XML::Node.new('div', @doc)
      attributes.each do |name, value|
        node.set_attribute(name, value)
      end
      node.content = text
      @doc.at('body').add_child(node)
    end

    def to_html
      @doc.to_html
    end

  end
end
