# WhitekitNews

This is a News for [WhiteKit](https://github.com/whiteskull/whitekit)

## Installation

Add this line (or uncomment) to your WhiteKit's  Gemfile:

```ruby
gem 'whitekit_news'
```

And then execute:

```bash
$ bundle install
````

Then run

```bash
$ rails g whitekit_news
````

And then

```bash
$ rake db:migrate
```

Then you need add (or uncomment) routes for news in routes.rb

```ruby
resources :news, only: [:index, :show] do
  get 'page/:page', action: :index, on: :collection
end
```

## Usage

Now page with news available at

/news

In admin part you can add, edit and remove news

## Component news

This gem also creates component of news. You can add it in to the block. The component of news takes some params.

Example default

```text
count: 5,
title_length: 50,
content_length: 200,
content_view: true,
date_view: true,
type: :latest
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
