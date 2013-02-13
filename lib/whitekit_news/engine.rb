module WhitekitNews
  class Engine < Rails::Engine
    initializer "css and js precompile" do |app|
      app.config.assets.precompile += %w(news.js news.css)
    end
  end
end

