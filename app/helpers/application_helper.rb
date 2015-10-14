
module ApplicationHelper

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

  def admin?
    return current_user && current_user.admin?
  end

  def posts
    admin? ? (return Post.all) : (return Post.where(published: true))
  end

  def projects
    admin? ? (return Project.all) : (return Project.where(published: true))
  end

end
