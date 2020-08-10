class CategorysController < ApplicationController

  def index
  end

  def show
    @categories = Category.all
    @category_items = Category.find(params[:id]).informations.order(id: "DESC")
  end
  
end
