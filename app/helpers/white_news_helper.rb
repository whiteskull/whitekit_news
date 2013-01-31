module WhiteNewsHelper
  # Link to add news
  def add_news_for_admin
    if admin? && cookies['whitecms-edit'] == 'on'
      link_to t('whitecms_news.add'), rails_admin.new_path(:white_news), class: 'btn btn-info'
    end
  end

  # Link to edit news
  def edit_news_for_admin
    if admin? && cookies['whitecms-edit'] == 'on'
      link_to t('whitecms_news.edit'), rails_admin.edit_path(:white_news, @news.id), class: 'btn btn-info'
    end
  end
end