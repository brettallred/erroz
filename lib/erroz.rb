require "configuration"
require "erroz/default_error"
require "erroz/active_model_error"
require "erroz/version"

module Erroz
  # Settings container for all application configurable settings
  #
  def self.settings
    @settings ||= Erroz::Configuration.new
  end

  # Assigns application configurable settings
  #
  # Expects a ::Erroz::Configuration object
  #
  # The preferred approach for specifiying settings
  # is to use the configure method
  def self.settings=(settings)
    @settings = settings
  end

  # Sets configuration settings trough yielding the global configuration object
  # to a block.
  #
  # ==== Example
  #         # Configure Settings
  #           ::Erroz.configure do |settings|
  #             settings.yaml_path     = '123'
  #           end
  def self.configure
    yield settings if block_given?
  end
end
