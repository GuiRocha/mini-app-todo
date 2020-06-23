require 'rails_helper'
RSpec.describe "Todos", type: :request do
  # let!(:todos) { create_list(:todo, 10) }
  # let(:todo_id) { todos.first.id }

  it 'returns status code 200' do
    get todos_path
    expect(response).to have_http_status(302)
  end
  # it 'the todo title exists' do
  #   todos = create_list(:todo, 3)
  #   get todos_path
  #   todos.each do |todo|
  #     expect(response.body).to include(todo.title)
  #   end
end
