class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['NAME'], password: ENV['PASSWORD']
  def show
    @products = Product.count(:id)
    @categories = Category.count(:id)
  end
end
