require "bundler/canary/version"

module Bundler
  module Canary
    def self.alive?
      puts "Yes"
      exit 0
    end
  end
end
