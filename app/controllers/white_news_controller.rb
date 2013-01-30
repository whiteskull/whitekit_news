class WhiteNewsController < ApplicationController
  def index
    @news = WhiteNews.all
  end
end
