require 'spec_helper'
require 'rails_helper'

RSpec.feature "Todo", type: :feature do

  before do
    @user = FactoryBot.create(:user)
  end

  scenario 'registered user' do
    FactoryBot.create(:todo)
    log_in @user.email,
           @user.password
    click_link 'Novo Todo'
    expect(page).to have_content('Crie seu ToDo')
  end

  # scenario 'create todo' do
  #   log_in @user.email, @user.password
  #   click_link 'Novo Todo'
  #   create_new_todo_with 'Um teste', 'Descrição do teste'
  #
  #   expect(page).to have_content('Create Todo')
  # end

  def create_new_todo_with(title, description)
    click_link 'Novo Todo'
    fill_in 'todo_title', with: title
    fill_in 'todo_description', with: description
    click_button 'Create Todo'
  end

  private

  def log_in(email, password)
    visit new_user_session_path
    fill_in 'user_email', with: email
    fill_in 'user_password', with: password
    click_button 'Log in'
  end
end
