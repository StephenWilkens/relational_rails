require 'rails_helper'

describe Company do
  describe 'relationships' do
    it { should have_many(:bikes) }
  end
end
