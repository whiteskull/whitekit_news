class NewsComponent < BaseComponent
  def main
    defaults = {
        count: 5,
        title_length: 50,
        content_length: 200,
        content_view: true,
        date_view: true
    }
    merge(defaults)

    view_news
  end

  # View news depending on the type of
  def view_news
    case @options[:type]
      when 'latest'
        @news_component = WhiteNews.latest(@options[:count].to_i)
      else
        @news_component = false
    end
  end
end