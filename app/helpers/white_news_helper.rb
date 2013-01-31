module WhiteNewsHelper
  # Link to add news
  def add_news_for_admin
    if admin? && cookies['whitecms-edit'] == 'on'
      link_to t('whitecms_news.add'), rails_admin.new_path(:white_news), class: 'btn btn-info'
    end
  end
end