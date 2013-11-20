require 'yaml'


module Erroz
  class DefaultError < StandardError
    def initialize(more_info_message = nil)
      @more_info_message = more_info_message
      @yaml_file = YAML.load_file('erroz.yml')
    end

    def error_name
      @error_name ||= "#{self.class}".gsub(/Error/, "").underscore
    end

    def status
      unless @http_status
        status = "#{error_name}_status"
        @http_status = I18n.t(status.to_sym, :default => 500)
      end
      @http_status
    end

    def code
      error_code = "#{error_name}_code"
      I18n.t(error_code.to_sym, :default => 0)
    end

    def message
      I18n.t(error_name, :default => 'an unknown error occurred')
    end

    def more_info
      if @more_info_message
        @more_info_message
      else
        info = "#{error_name}_info"
        I18n.t(info.to_sym, :default => '')
      end
    end
  end
end
