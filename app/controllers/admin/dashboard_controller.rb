class Admin::DashboardController < Admin::BaseController

  def show
    @product_count = Product.all.count
    @category_count = Category.all.count
    @categories = Category.all
  end

end
