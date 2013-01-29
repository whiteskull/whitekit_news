Rails.application.routes.draw do
  get 'news' => 'whitecms_news/team#index' , as: 'white_news'
end
