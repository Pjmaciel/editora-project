module ApplicationHelper
  def dropdown(&block)
    render partial: 'shared/search/dropdown', locals: { content: capture(&block) }
  end

  def actions_dropdown(&block)
    render partial: 'shared/search/actions_dropdown', locals: { content: capture(&block) }
  end
end
