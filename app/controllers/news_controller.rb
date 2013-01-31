class NewsController < ApplicationController

  # All news
  def index
    @news = News.visible.page(params[:page]).per(WHITE[:news_per_page])
  end

  # Single news
  def show
    @news = News.where(id: params[:id]).visible.first
  end
end
