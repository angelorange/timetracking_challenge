require 'rails_helper'

RSpec.describe Geofencing, type: :model do
  let(:geofencing) { build(:geofencing) }

  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:radius) }

  it { should respond_to(:location) }
  it { should respond_to(:latitude) }
  it { should respond_to(:longitude) }
  it { should respond_to(:radius) }
end
