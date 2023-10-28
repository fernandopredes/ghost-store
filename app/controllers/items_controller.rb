class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.as_json(include: { category: { only: [:id, :name] } })
  end

  def show_by_category
    category = Category.friendly.find(params[:category_slug])
    items = category.items
    render json: items
  end


  def show
    item = Item.find(params[:id])
    render json: item
  end

end
