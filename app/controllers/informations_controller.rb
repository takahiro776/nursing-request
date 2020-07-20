class InformationsController < ApplicationController
  def index
  end

  def new
    @information = Information.new
    # binding.pry
  end

  def create
    @information = Information.new(info_params)
    if @information.save
      redirect_to root_path, notice: "送信が完了しました"
    else
      render :new
    end
  end

  private
  def info_params
    params.require(:information).permit(:content)
  end
end
