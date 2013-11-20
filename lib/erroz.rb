require "active_support/inflector"
require "erroz/default_error"
require "erroz/active_model_error"
require "erroz/version"

module Erroz
  def self.error_messages
    @error_messages ||= {}
  end

  def self.error_messages=(error_messages)
    @error_messages = error_messages
  end
  private_class_method :error_messages=

  def self.load_error_messages(yaml_config_path)
    self.error_messages = YAML.load_file(yaml_config_path, :safe => true) 
  end
end
