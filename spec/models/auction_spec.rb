require 'rails_helper'

RSpec.describe Auction do
  it { should have_db_column(:title).
                  of_type(:string).
                  with_options(null: false) }
  it { should have_db_column(:description).
                  of_type(:text).
                  with_options(null: false) }
  it { should have_db_column(:starting_price).
                  of_type(:decimal).
                  with_options(null: false, precision: 7, scale: 2)}
  it { should have_db_column(:current_price).
                  of_type(:decimal).
                  with_options(null: false, precision: 7, scale: 2)}

  it { should have_db_column(:auctionable_id).of_type(:integer) }
  it { should have_db_column(:auctionable_type).of_type(:string) }

  it { should have_db_index([:auctionable_id, :auctionable_type]) }

  it { should belong_to(:auctionable) }

  describe 'before_create' do
    it 'sets the current_price to the starting_price' do
      auction = FactoryGirl.create(:auction)
      expect(auction.current_price).to eq(auction.starting_price)
    end
  end
end