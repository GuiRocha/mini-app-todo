require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user) }

  describe "Sign up" do
    it "is valid when all attributes are correct" do
      expect(subject).to be_valid
    end
  end
  it "is invalid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end
  describe "Associations" do
      it "has many todo" do
        t = User.reflect_on_association(:todos)
        expect(t.macro).to eq(:has_many)
      end
    end
end
