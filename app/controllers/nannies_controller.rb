class NanniesController < ApplicationController
  def index
    @nannies = Nanny.all
    @nanniesmarkers = @nannies.map do |nanny|
    { lat: nanny.latitude,
      lng: nanny.longitude,
      nannyimage_url: helpers.asset_url('bubba-pushchair.png') }
   end
   @imgs = @nannies.map { |nanny| [nanny.id, nanny.user.photo] }
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
