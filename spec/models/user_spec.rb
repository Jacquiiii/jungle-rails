require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do

    it "should save if presense of first_name, last_name, email, password is true & password and password_confirmation match" do
      user = User.new(first_name: 'John', last_name: 'Smith', email: 'john.smith@smith.com', password: 'test', password_confirmation: 'test')
      user.save
      expect(user).to be_valid
    end

    it "should not save if password and password_confirmation do not match" do
      user = User.new(first_name: 'John', last_name: 'Smith', email: 'john.smith@smith.com', password: "Shrubs", password_confirmation: "Meow")
      user.save
      expect(user).not_to be_valid
    end

    it "should not save if email is not unique" do
      user = User.new(first_name: 'Tammy', last_name: 'Smith', email: 'tammy.smith@smith.com', password: "Cat", password_confirmation: "Cat")
      user.save

      user_2 = User.new(first_name: 'Tammy', last_name: 'Smith', email: 'TAMMY.smith@smith.com', password: "Cat", password_confirmation: "Cat")
      user_2.save
      expect(user_2).not_to be_valid
    end

    it "should save if the password has 4 or more characters" do
      user = User.new(first_name: 'John', last_name: 'Smith', email: 'john.smith@smith.com', password: "Meow", password_confirmation: "Meow")
      user.save
      expect(user).to be_valid
    end

    it "should not save if the password is under 4 characters" do
      user = User.new(first_name: 'John', last_name: 'Smith', email: 'john.smith@smith.com', password: "hey", password_confirmation: "hey")
      user.save
      expect(user).to_not be_valid
    end

  end

end
