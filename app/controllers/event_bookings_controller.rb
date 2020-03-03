class EventBookingsController < ApplicationController

  def index
    @event_bookings = EventBooking.all
  end

  def show
    @event_booking = EventBooking.find(params[:id])
   #  @nanniesmarkers = @nannies.map do |nanny|
   #  { lat: nanny.latitude,
   #    lng: nanny.longitude,
   #    nannyimage_url: helpers.asset_url('bubba-pushchair.png') }
   # end
   # @imgs = @nannies.map { |nanny| [nanny.id, nanny.user.photo] }
  end

  def new
    @event_booking = EventBooking.new
    @event = Event.find(params[:event_id])
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
    params.require(:event_booking).permit(:event_id, :user_id, :spaces_booked)
  end
end