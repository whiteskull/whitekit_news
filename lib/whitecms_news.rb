require 'active_support/dependencies'

require "whitecms_news/version"
require 'whitecms_news/engine'

module WhitecmsNews

  # Yield self on setup for nice config blocks
  def self.setup
    yield self
  end

end
