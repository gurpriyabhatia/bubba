class EventBookingsController < ApplicationController
  def new
    @event_booking = EventBooking.new
    @event = Event.find(params[:event_id])

  end

  def create
    @event_booking = EventBooking.new(event_booking_params)
    @event_booking.user = current_user
    if @event_booking.save!
      redirect_to new_event_event_booking_path
    else
    render :new
    end
  end


  def confirmation
    smth
  end

  private

  def event_booking_params
    params.require(:event_booking).permit(:event_id, :user_id)
  end
end
