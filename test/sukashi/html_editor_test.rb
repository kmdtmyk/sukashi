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

end
