class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['BASIC_AUTH_USERNAME'], password: ENV['BASIC_AUTH_PASSWORD']

  def show
    @product_count = Product.all.count
    @category_count = Category.all.count
    @categories = Category.all
  end

end
