class NewsComponent < BaseComponent
  def main
    @options[:count] ||= 3

    view_news
  end

  # View news depending on the type of
  def view_news
    case @options[:type]
      when 'latest'
        @news = WhiteNews.latest(@options[:count])
      else
        @news = false
    end
  end
end