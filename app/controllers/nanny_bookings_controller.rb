class NannyBookingsController < ApplicationController
  def index
    @nanny = Nanny.find(params[:nanny_id])
    #@nanny_bookings = NannyBooking.all
    @nanny_bookings = NannyBooking.includes(:nanny).joins(:nanny).order(:date)
  end

  def show
    @nanny = Nanny.find(params[:nanny_id])
    @nanny_booking = NannyBooking.find(params[:id])
  end

  def new
    @nanny_booking = NannyBooking.new
    @nanny = Nanny.find(params[:nanny_id])
  end

  def create
    @nanny = Nanny.find(params[:nanny_id])
    @nanny_booking = NannyBooking.new(nanny_booking_params)
    @nanny_booking.nanny = @nanny
    @nanny_booking.user = current_user
    if @nanny_booking.save!
      redirect_to nanny_nanny_booking_path(@nanny, @nanny_booking)
      # (event_booking:@event_booking.id)
    else
      render :new
    end
  end

  def edit
    @nanny = Nanny.find(params[:nanny_id])
    @nanny_booking = NannyBooking.find(params[:id])
  end

  def update
    @nanny = Nanny.find(params[:nanny_id])
    @nanny_booking = NannyBooking.find(params[:id])
    if @nanny_booking.update!(nanny_booking_params)
      redirect_to nanny_nanny_booking_path(@nanny, @nanny_booking)
    else
      render :new
    end
  end

  def destroy
    @nanny_booking = NannyBooking.find(params[:id])
    @nanny_booking.destroy
    redirect_to nanny_nanny_bookings_path
  end

  private

  def nanny_booking_params
    params.require(:nanny_booking).permit(:nanny_id, :user_id, :date, :special_instructions, :address, :number_of_children, :duration)
  end
end
