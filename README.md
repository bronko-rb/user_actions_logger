# UserActionsLogger

### Installation:
1. Add UserActionsLogger to you 'Gemfile'. <br />
    gem 'user_actions_logger', '~> 0.1'
    
2. Add 'loggings' table to your database
    
    rails generate migration CreateLoggings user:string object:string action:string module_name:string created_at:datetime updated_at:datetime <br />
    bundle exec rake db:migrate

### Basic Usage:
    missing doc. :(