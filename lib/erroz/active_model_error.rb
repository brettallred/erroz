module Erroz
  class ActiveModelError < Erroz::DefaultError
    def initialize(model)
      if model.errors.present?
        more_info = model.errors.full_messages.join(" ")
        super(more_info)
      end
      @http_status = model.status_code
    end
  end
end
