require 'spec_helper'

describe Issue do
  describe '.categories' do
    it 'includes Bug' do
      expect(Issue.categories).to include("Bug")
    end

    it 'includes Feature Request' do
      expect(Issue.categories).to include("Feature Request")
    end

    it 'includes Customer Service' do
      expect(Issue.categories).to include("Customer Service")
    end
  end
end
