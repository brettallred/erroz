require "spec_helper"

describe Erroz do
  describe ".error_messages" do
    it "defaults to an ::Erroz::Configuration object" do 
      expect(::Erroz.error_messages).to be_instance_of Hash 
    end
  end

  describe ".yaml_config_path" do
    let(:yaml_config_path) { "spec/assets/sample.yml" } 
    it "allows settings to be be manually set" do 
      ::Erroz.load_error_messages(yaml_config_path)
      expect(::Erroz.error_messages).to have_key 'sso'
    end
  end
end
