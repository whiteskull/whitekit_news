module WhitecmsNews
  class Engine < Rails::Engine

    initialize "whitecms_news.load_app_instance_data" do |app|
      WhitecmsNews.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "whitecms_news.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end
end

