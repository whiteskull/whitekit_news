class NewsComponent < BaseComponent
  PARAMS_DESCRIPTION = <<-DESCRIPTION
count: [integer] the number of news
title_length: [integer] length of title
content_length: [integer] length of content
content_view: [true or false] show content or not
date_view: [true or false] show date or not
type: [:latest] type of render
  DESCRIPTION

  def main
    defaults = {
        count: 5,
        title_length: 50,
        content_length: 200,
        content_view: true,
        date_view: true,
        type: :latest
    }
    merge(defaults)

    view_news
  end

  # View news depending on the type of
  def view_news
    case @options[:type].to_s
      when 'latest'
        @news_component = News.latest(@options[:count].to_i)
      else
        @news_component = false
    end
  end
end