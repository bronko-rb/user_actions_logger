namespace :user_actions_logger do
  task create_migration: :environment do
    `rails generate migration CreateLoggings user:string object:string action:string module_name:string created_at:datetime updated_at:datetime`
  end
end