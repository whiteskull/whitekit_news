class WhiteNewsController < ApplicationController

  # All news
  def index
    @news = WhiteNews.visible.page(params[:page]).per(3)
  end

  # Single news
  def show
    @news = WhiteNews.where(id: params[:id]).visible.first
  end
end
