require 'rails_helper'

feature 'Visitor can view navigation links' do
  context 'Visitor views navigation links in navbar' do
    it 'should display publicly accessible links' do
      visit('/')
      expect(page).to have_link('How it Works')
      expect(page).to have_link('Pricing')
      expect(page).to have_link('FAQ')
    end
  end

  context 'Visitor can navigate to other pages via links in navbar' do
    it 'should allow access via publicly accessible links' do
      visit('/')
      click_on 'FAQ'
      expect(current_path).to eq('/pages/faq')      
    end
  end
end