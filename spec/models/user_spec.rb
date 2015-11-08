require 'rails_helper'

RSpec.describe User do
  before { FactoryGirl.create(:user) }

  it { should have_db_column(:username)
                  .of_type(:string)
                  .with_options(null: false) }
  it { should have_db_column(:email)
                  .of_type(:string)
                  .with_options(null: false) }

  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }

  it { should have_db_index(:username).unique(true) }
  it { should have_db_index(:email).unique(true) }

  # Email related validations
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }

  valid_addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
  invalid_addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                         foo@bar_baz.com foo@bar+baz.com]

  valid_addresses.each do |address|
    it { should allow_value(address).for(:email) }
  end

  invalid_addresses.each do |address|
    it { should_not allow_value(address).for(:email) }
  end

  # Username related validations
  valid_usernames = %w[username user_name user-name user123]
  invalid_usernames = %w[user,name user+name user.name]

  valid_usernames.each do |username|
    it { should allow_value(username).for(:username) }
  end

  invalid_usernames.each do |username|
    it { should_not allow_value(username).for(:username) }
  end

  it { should validate_length_of(:username).is_at_least(6).is_at_most(30) }
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }

  describe '#email=' do
    let(:user) { User.new }

    it 'lowercases the email address' do
      user.email = 'RaiLsUseR@DOMAIN.com'
      expect(user.email).to eq('railsuser@domain.com')
    end
  end

  describe '#username=' do
    let(:user) { User.new }

    it 'lowecases the username' do
      user.username = "RaIlSRuMble"
      expect(user.username).to eq('railsrumble')
    end
  end
end