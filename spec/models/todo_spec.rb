require 'rails_helper'

RSpec.describe Todo, type: :model do
  subject { FactoryBot.create(:todo) }

  it 'is valid only with title and description' do
    subject.description = FFaker::String
    subject.title = FFaker::Name
    expect(subject).to be_valid
  end

  it 'is invalid without title and description' do
    subject.title = nil
    subject.description = nil
    expect(subject).to_not be_valid
  end

  describe "Model associations" do
      it "belongs to user" do
        t = Todo.reflect_on_association(:user)
        expect(t.macro).to eq(:belongs_to)
      end

      it "Have many items" do
        t = Todo.reflect_on_association(:items)
        expect(t.macro).to eq(:has_many)
      end
  end
end
