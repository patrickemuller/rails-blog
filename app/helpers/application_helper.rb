# frozen_string_literal: true

# Enable Syntax Highlight on Markdown
class CodeRayify < Redcarpet::Render::HTML
  def block_code(code, language)
    if language.present?
      CodeRay.scan(code, language).div
    else
      CodeRay.scan(code, 'html').div
    end
  end
end

module ApplicationHelper
  # rubocop:disable Rails/OutputSafety
  def convert_to_markdown(text)
    coderay = CodeRayify.new(filter_html: true, hard_wrap: true)
    options = {
      fenced_code_blocks: true,
      autolink: true,
      tables: true
    }
    markdown = Redcarpet::Markdown.new(coderay, options)
    markdown.render(text).html_safe
  end
  # rubocop:enable Rails/OutputSafety
end
