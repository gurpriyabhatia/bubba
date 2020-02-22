class NanniesController < ApplicationController
  def index
    @nannies = Nanny.all
  end

  def show
    @nanny = Nanny.find(params[:id])
  end

  def new
    @nanny = Nanny.new
  end

  def create
    @nanny = Nanny.new(nanny_params)
    @nanny.save
    redirect_to nanny_path(@nanny)
  end

  def edit
    @nanny = Nanny.find(params[:id])
  end

  def update
    @nanny = Nanny.find(params[:id])
    @nanny.update(nanny_params)
    redirect_to nanny_path
  end

  def destroy
    @nanny = Nanny.find(params[:id])
    @nanny.destroy
    redirect_to nanny_path
  end

  private

  def nanny_params
    params.require(:nanny).permit(:nanny_picture, :address, :mobile_number, :price_per_hour, :bio)
  end
end
