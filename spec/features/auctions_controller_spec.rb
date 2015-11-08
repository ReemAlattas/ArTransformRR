require 'rails_helper'

RSpec.describe 'AuctionsController' do
  include ActionView::Helpers::NumberHelper

  describe 'GET to #show' do
    subject { page }
    context 'when auction is present' do
      let!(:auction) { FactoryGirl.create(:user_auction) }

      before { visit auction_path(auction) }

      it { should have_selector('main header h1', text: auction.title)}
      it { should have_selector('main .auction-bid-box span.current-bid',
                                text: number_to_currency(auction.current_price)) }
      it { should have_selector('main .auction-description',
                                text: auction.description) }
      it { should have_title(full_title(auction.title)) }
    end

    context 'when no auction is present' do
      it 'throws a RecordNotFound error' do
        expect { visit auction_path(12345) }.
            to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end