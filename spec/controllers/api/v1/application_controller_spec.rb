require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe 'includes the correct concerns' do
    it { expect(described_class.ancestors).to include(ActionController::API) }
  end
end