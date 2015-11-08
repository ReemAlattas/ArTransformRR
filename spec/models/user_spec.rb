require 'rails_helper'

RSpec.describe User do

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
end