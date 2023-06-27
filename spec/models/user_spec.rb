require 'rails_helper'

RSpec.describe User, type: :model do
  # before { @user = FactoryBot.build(:user) }
  
  # O método abaixo é o mesmo que o de cima, porém mais simplificado.
  
  # subject { build(:user) }

  # it { expect(@user).to respond_to(:email) }
  # it { expect(@user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }

  # O método abaixo é o mesmo que o de cima, porém mais simplificado.

  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:password) }
  it { is_expected.to respond_to(:password_confirmation) }
  it { is_expected.to be_valid }
end
