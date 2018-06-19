# frozen_string_literal: true

require "user_actions_logger/user_actions_logger_tasks" if defined?(Rails)

module UserActionsLogger
  extend ActiveSupport::Concern

  included do
    before_action :create_log, only: :destroy
    after_action :create_log, only: %i[update create]
  end

  def watch_for
    'override this method(watch_for) in you controller. Read the doc!'
  end

  def who_did_it
    current_user.to_json
  end

  def where_did
    controller_name.classify
  end

  def what_did
    params[:action]
  end

  private

  def create_log
    log = Logging.new
    log.user = who_did_it
    log.object = watch_for.to_json
    log.action = what_did
    log.loggable_type = where_did
    log.loggable_id = watch_for.id
    log.save
  end
end