require 'safe_yaml'

module Erroz
  class DefaultError < StandardError
    def initialize(more_info_message = nil)
      @more_info_message = more_info_message
    end

    def error_name
      @error_name ||= "#{self.class}".underscore
    end

    def status
      unless @status
        status = "#{error_name}_status"
        @status = ::Erroz.error_messages[status] || 500
      end
      @status
    end

    def code
      unless @code
        error_code = "#{error_name}_code"
        @code = ::Erroz.error_messages[error_code] || 0
      end
      @code
    end

    def message
      unless @message
        error_message = "#{error_name}_message"
        @message = ::Erroz.error_messages[error_message] || 'an unknown error occurred'
      end
      @message
    end

    def more_info_message
      unless @more_info_message
        info = "#{error_name}_info"
        @more_info_message = ::Erroz.error_messages[info] || ''
      end
      @more_info_message
    end
  end
end
