class InformationsController < ApplicationController
  before_action :set_category
  
  def index
    @informations = Information.includes(:images).all.order(id: "DESC")
  end

  def new
    @information = Information.new
    @information.images.new
  end

  def create
    @information = Information.new(info_params)
    if @information.save
      redirect_to root_path, notice: "送信が完了しました"
    else
      render :new, notice: "送信に失敗しました"
    end
  end

  private
  def info_params
    params.require(:information).permit(:content,  category_ids: [], images_attributes: [:url])
  end

  def set_category
    @categories = Category.all
  end
end
