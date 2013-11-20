require 'spec_helper'


describe Erroz::DefaultError do
  describe ".new" do
    let(:more_info_message){ "Some more details about the error" }
    it 'acceects a more more info message' do
      error = ::Erroz::DefaultError.new(more_info_message)
      expect(error.more_info).to eq more_info_message
    end
  end
end
