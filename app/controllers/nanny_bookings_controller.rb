class NannyBookingsController < ApplicationController
  def index
    @nanny_bookings = NannyBooking.all
  end

  def show
    @nanny_booking = NannyBooking.find(params[:id])
  end

  def new
    @nanny_booking = NannyBooking.new
    @nanny = Nanny.find(params[:nanny_id])
  end

  def create
    @nanny_booking = NannyBooking.new(nanny_booking_params)
    @nanny_booking.nanny = Nanny.find(params[:nanny_id])
    @nanny_booking.user = current_user
    if @nanny_booking.save!
      redirect_to nanny_nanny_bookings_path
      # (event_booking:@event_booking.id)
    else
      render :new
    end
  end

  private

  def nanny_booking_params
    params.require(:nanny_booking).permit(:nanny_id, :user_id, :date, :address, :number_of_children)
  end
end


