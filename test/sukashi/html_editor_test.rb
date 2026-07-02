require "test_helper"

class Sukashi::HtmlEditorTest < ActiveSupport::TestCase

  test 'html追加' do
    html = <<~HTML
      <html>
        <body></body>
      </html>
    HTML
    editor = Sukashi::HtmlEditor.new(html)
    editor.add_watermark('sample')
    assert_includes editor.to_html, '<div>sample</div>'
  end

  test 'class付き' do
    html = <<~HTML
      <html>
        <body></body>
      </html>
    HTML
    editor = Sukashi::HtmlEditor.new(html)
    editor.add_watermark('sample', class: 'foo')
    assert_includes editor.to_html, '<div class="foo">sample</div>'
  end

  test 'stylesタグ追加' do
    html = <<~HTML
      <html>
        <body></body>
      </html>
    HTML
    editor = Sukashi::HtmlEditor.new(html)
    editor.add_style('.foo{color:red}')
    assert_includes editor.to_html, '<style type="text/css">.foo{color:red}</style>'
  end

end
