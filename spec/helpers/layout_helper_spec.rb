require 'rails_helper'

RSpec.describe LayoutHelper do
  describe '#full_title' do
    it 'displays only the app title and tagline when no page title is given' do
      expect(helper.full_title).
          to eq("#{I18n.t('app_title')} - #{I18n.t('app_tagline')}")
    end

    it 'includes the page title when one is passed in' do
      expect(helper.full_title('Blah')).to include('Blah')
    end

    it 'includes a double colon if a page title is passed in' do
      expect(helper.full_title('Blah lol wtf')).to include('::')
    end
  end

  describe '#title' do
    it 'creates a content_for title with the content passed in' do
      helper.title('lol')
      expect(helper.content_for(:page_title)).to eq('lol')
    end
  end
end