class CategoriesController < ApplicationController
  def index
    @categories = Category.order_alphabetically
  end

  def show
    @category = Category.find(params[:id])
  end
end
