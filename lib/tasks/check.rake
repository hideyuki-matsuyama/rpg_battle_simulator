namespace :check do
  desc '静的コードチェックとテスト実行'
  task :all do
    exit 1 unless Rake::Task['check:rubocop'].invoke && Rake::Task['check:rails_best_practices'].invoke && Rake::Task['check:rspec'].invoke
  end

  desc 'RuboCopを実行'
  task :rubocop do
    exit 1 unless system 'bundle exec rubocop'
  end

  desc 'Rails Best Practicesを実行'
  task :rails_best_practices do
    exit 1 unless system 'bundle exec rails_best_practices .'
  end

  desc 'RSpecを実行'
  task :rspec do
    exit 1 unless system 'bundle exec rails spec'
  end
end
