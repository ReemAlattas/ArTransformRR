require 'rails_helper'

RSpec.describe 'WelcomeController' do
  describe 'GET to #index' do
    subject { page }
    before { visit root_path }

    it { should have_selector('header h1', text: I18n.t('app_title')) }
    it { should have_selector('header span.tagline',
                              text: I18n.t('app_tagline')) }
    it { should have_title(full_title) }
  end
end