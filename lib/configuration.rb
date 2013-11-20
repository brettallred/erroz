module Erroz
  class Configuration
    attr_accessor :error_data

    def config_from_yml(yml_file_path)
      # yml_file = YAML.load_file(File.expand_path(yml_file_path))
      # yml_file = yml_file[environment(yml_file)]
      # yml_file = Hash[yml_file.map{ |k, v| [k.to_sym, v] }]
      # ::MoneyDesktop::Configuration.required_variables.all? { |required_variable| yml_file.has_key?(required_variable) or raise ::MoneyDesktop::YAMLConfigurationError }

      # ::MoneyDesktop.configure do |config|
      #   config.api_key        = yml_file[:api_key]
      #   config.client_guid    = yml_file[:client_guid]
      #   config.client_api_key = yml_file[:client_api_key]
      #   configure_urls(config, yml_file)
      # end
    end
  end
end
