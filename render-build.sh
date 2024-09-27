# exit on error
set -o errexit

# Ensure bundler is installed
gem install bundler
bundle binstubs bundler --force
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed