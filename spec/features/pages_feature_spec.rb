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
    it 'should allow user to go to home page by clicking logo' do 
      visit('/')
      click_on 'SeedBooks'
      expect(current_path).to eq('/')      
    end

    it 'should allow user to access How It Works page' do
      visit('/')
      click_on 'How it Works'
      expect(current_path).to eq('/pages/howitworks')      
    end

    it 'should allow user to access Pricing page' do
      visit('/')
      click_on 'Pricing'
      expect(current_path).to eq('/pages/pricing')      
    end

    it 'should allow user to access FAQ page' do
      visit('/')
      click_on 'FAQ'
      expect(current_path).to eq('/pages/faq')      
    end
  end
end