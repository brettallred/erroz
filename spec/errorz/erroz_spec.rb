require "spec_helper"

describe Erroz do

  describe ".configure" do
    let (:error_data) {{:error => "I am an error"}}

    it "yields up the configuration object allowing it to be configured" do
      ::Erroz.configure do |settings|
        settings.error_data = error_data
      end
      expect(::Erroz.settings.error_data).to eq error_data
    end
  end

  describe ".settings" do
    it "defaults to an ::Erroz::Configuration object" do 
      expect(::Erroz.settings).to be_instance_of ::Erroz::Configuration
    end
  end

  describe ".settings=" do
    it "allows settings to be be manually set" do 
      ::Erroz.settings = ::Hash.new 
      expect(::Erroz.settings).to be_instance_of Hash
    end
  end
end
