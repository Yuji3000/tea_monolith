# exit on error
set -o errexit

bundle binstubs bundler --force
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed