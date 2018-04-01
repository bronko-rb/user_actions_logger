class RakeGem::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/user_actions_logger.rake'
  end
end