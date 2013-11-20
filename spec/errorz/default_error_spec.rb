require 'spec_helper'

class SampleError < ::Erroz::DefaultError; end

describe Erroz::DefaultError do
  describe ".new" do
    let(:more_info_message){ "Some more details about the error" }

    it 'acceects a more more info message' do
      error = ::Erroz::DefaultError.new(more_info_message)
      expect(error.more_info_message).to eq more_info_message
    end
  end

  subject { SampleError.new }

  describe "#error_name" do
    it "returns the name of the underscore name of error class" do
      expect(subject.error_name).to eq "sample_error"    
    end
  end

  describe "#status" do
    it "returns the status found in the yml file for error" do
      expect(subject.status).to eq 600 
    end
  end

  describe "#code" do
    it "returns the code found in the yml file for the error" do
      expect(subject.code).to eq 1600 
    end
  end

  describe "#message" do
    it "returns the message found in the yml file for the error" do
      expect(subject.message).to eq "Message" 
    end
  end

  describe "#more_info" do
    it "returns the more_info found in the yml file for the error" do
      expect(subject.more_info_message).to eq "More Info" 
    end
  end
end
