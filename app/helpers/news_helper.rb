module NewsHelper
  # Link to add news
  def add_news_for_admin
    if admin? && cookies['whitekit-edit'] == 'on'
      link_to t('whitekit_news.add'), rails_admin.new_path(:news), class: 'btn btn-info'
    end
  end

  # Link to edit news
  def edit_news_for_admin
    if admin? && cookies['whitekit-edit'] == 'on'
      link_to t('whitekit_news.edit'), rails_admin.edit_path(:news, @news.id), class: 'btn btn-info'
    end
  end
end