namespace :linters do
  desc "Run all linters"

  task run: :environment do
    sh "bundle exec rubocop"
    sh "bundle exec reek"
    sh "bundle exec rails_best_practices"
  end
end
