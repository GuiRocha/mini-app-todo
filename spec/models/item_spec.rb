require 'rails_helper'

RSpec.describe Item, type: :model do

  subject { FactoryBot.create(:item) }

  it 'is valid' do
    expect(subject).to be_valid
  end

  it 'is invalid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe "Model associations" do
    it "belongs to todo" do
      t = Item.reflect_on_association(:todo)
      expect(t.macro).to eq(:belongs_to)
    end
  end

end
