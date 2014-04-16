require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Tutorial App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Tutorial App')
    end
    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Tutorial App | Home")
      expect(page).to have_title("Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Tutorial App | Help")
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Tutorial App | About Us")
      expect(page).to have_title("About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Tutorial App | Contact")
    end
  end

end
