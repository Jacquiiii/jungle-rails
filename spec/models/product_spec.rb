require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "should save if the presence of name, price, quantity and category is true" do
      category = Category.new(name: "Shrubs")
      category.save
      product = Product.new(name: "Krapliper", price: "24.99", quantity: 4, category_id: category[:id])
      product.save
      expect(product).to be_valid
    end

    it "should not save if the presense of category_id is false" do
      category = Category.new(name: nil)
      category.save
      product = Product.new(name: "Krapliper", price: "24.99", quantity: 4, category_id: category[:id])
      product.save
      expect(product.errors.full_messages).to include("Category must exist")
    end

    it "should not save if the presense of name is false" do
      category = Category.new(name: "Trees")
      category.save
      product = Product.new(name: nil, price: "24.99", quantity: 4, category_id: category[:id])
      product.save
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it "should not save if the presense of quantity is false" do
      category = Category.new(name: "Evergreens")
      category.save
      product = Product.new(name: "Swamp Root", price: "24.88", quantity: nil, category_id: category[:id])
      product.save
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "should not save if the presense of price is false" do
      category = Category.new(name: "Flowers")
      category.save
      product = Product.new(name: "Sunflower", quantity: 4, category_id: category[:id])
      product.save
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

  end
end
