require 'rails_helper'

RSpec.describe User, type: :model do

  ## O método #_01_#

  let(:user) { build(:user) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to allow_value("deivid@email.com").for(:email) }
  it { is_expected.to validate_confirmation_of(:password) }

  ## O método #_02_#

  # it { expect(user).to respond_to(:email) }
  # it { expect(user).to validate_presence_of(:name) }

  # context 'when name is blank' do
  #   before { user.name = "" }

  #   it { expect(user).not_to be_valid }
  # end

  # context 'when name is nil' do
  #   before { user.name = nil }

  #   it { expect(user).not_to be_valid }
  # end

  ## O método #_03_#

  # before { @user = FactoryBot.build(:user) }
  
  ## O método #_04_#
  
  # subject { build(:user) }

  # it { expect(@user).to respond_to(:email) }
  # it { expect(@user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }

  ## O método #_05_#

  # it { is_expected.to respond_to(:email) }
  # it { is_expected.to respond_to(:name) }
  # it { is_expected.to respond_to(:password) }
  # it { is_expected.to respond_to(:password_confirmation) }
  # it { is_expected.to be_valid }
end
