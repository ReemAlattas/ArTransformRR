require 'rails_helper'

RSpec.describe 'WelcomeController' do
  describe 'GET to #index' do
    subject { page }
    before { visit root_path }

    it { should have_selector('header h1', text: 'Artbid') }
    it { should have_selector('header span.tagline', text: 'The Auction site for the Artists') }
    it { should have_title('ArtBid - Auction site for Art lovers') }
  end
end