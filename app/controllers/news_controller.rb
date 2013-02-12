class NewsController < ApplicationController

  # All news
  def index
    @news = News.visible.page(params[:page]).per(WHITEKIT[:news_per_page] || 10)
  end

  # Single news
  def show
    @news = News.where(id: params[:id]).visible.first
  end
end
