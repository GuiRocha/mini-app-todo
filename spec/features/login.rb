require 'spec_helper'
require 'rails_helper'

RSpec.feature "User", type: :feature do
  scenario 'email and password correct' do
    sign_up 'guilhermerxcha@gmail.com', '123456'
    expect(page).to have_content('Feed de ToDo')
  end

  scenario 'empty fields' do
    sign_up '', ''
    expect(current_path).to eq('/users')
    expect(page).to have_content('Password can\'t be blank')
    expect(page).to have_content('Email can\'t be blank')
  end

  context "invalidated filling" do
    scenario 'invalid email' do
      sign_up 'invalid_email', '123456'
      expect(current_path).to eq('/users')
      expect(page).to have_content('Sign In')
    end
  end

  scenario 'password less than 6 characters' do
    sign_up 'guilhermerxcha@gmail.com', '123'
    expect(current_path).to eq('/users')
    expect(page).to have_content('Password is too short (minimum is 6 characters)')
  end

  private

  def sign_up(email, password)
    visit new_user_registration_path
    fill_in 'user_email', with: email
    fill_in 'user_password', with: password
    fill_in 'user_password_confirmation', with: password
    click_button 'Sign up'
  end

end