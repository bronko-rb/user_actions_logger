namespace :user_actions_logger do
  # rake user_actions_logger:install

  task install: :environment do
    `rails generate model Logging user object:jsonb action loggable_id:integer loggable_type`
    puts "model and migration created. run: 'rake db:migrate'"
  end
  task uninstall: :environment do
    `rails d model Logging`
    puts "model and migration destroyed. You need to rollback DB"
  end
end