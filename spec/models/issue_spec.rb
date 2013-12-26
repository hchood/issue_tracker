require 'spec_helper'

describe Issue do

  describe '.severities' do
    it 'includes High' do
      expect(Issue.severities).to include("High")
    end

    it 'includes Moderate' do
      expect(Issue.severities).to include("Moderate")
    end

    it 'includes Low' do
      expect(Issue.severities).to include("Low")
    end
  end

  it { should_not have_valid(:category).when(nil) }
  it { should_not have_valid(:severity).when(nil) }
  it { should belong_to :category }

  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :category }
  it { should validate_presence_of :severity }
end
