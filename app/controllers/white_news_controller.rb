class WhiteNewsController < ApplicationController
  def index
    @news = WhiteNews.visible
  end
end
