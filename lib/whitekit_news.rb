require 'active_support/dependencies'

require "whitekit_news/version"
require 'whitekit_news/engine'

module WhitekitNews

  # Yield self on setup for nice config blocks
  def self.setup
    yield self
  end

end
