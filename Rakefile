require "fileutils"

if ENV["BUNDLER_ARGS"] == "--local"
  FileUtils.mkdir_p "vendor/cache"
  Dir.chdir "vendor/cache" do
    sh "gem fetch nokogiri"
    sh "gem fetch rubinius-bundler-canary"
  end
end

if ENV["BUNDLER_ARGS"] == "--deployment"
  FileUtils.cp "Gemfile.lock.travis", "Gemfile.lock"
end

task :default do
  sh "bundle install $BUNDLER_ARGS"
  sh "bundle exec rubinius-bundler-canary"
end
