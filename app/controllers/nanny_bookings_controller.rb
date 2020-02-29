class NannyBookingsController < ApplicationController
   def index
    @event_booking = EventBooking.all
  end

  def show
    @event_booking = EventBooking.find(params[:id])
  end

  def new
    @nanny_booking = NannyBooking.new
    @nanny = Nanny.find(params[:nanny_id])
  end

  def create
    @event_booking = EventBooking.new(event_booking_params)
    @event_booking.user = current_user
    if @event_booking.save!
      redirect_to event_booking_path(@event_booking)
      # (event_booking:@event_booking.id)
    else
    render :new
    end
  end

  private

  def event_booking_params
    params.require(:event_booking).permit(:event_id, :user_id)
  end
end
