require 'rails_helper'

describe Bike do
  describe 'relationships' do
    it { should belong_to(:company) }
  end
end
