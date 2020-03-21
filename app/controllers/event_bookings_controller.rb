class EventBookingsController < ApplicationController
  before_action :set_event_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_event, only: [:new, :create]

  def index
    @event_bookings = current_user.event_bookings.sort_by { |event_booking| event_booking.event.date }
  end

  def show
    @event = @event_booking.event
    @markers = [
      { lat: @event.latitude,
        lng: @event.longitude,
        image_url: helpers.asset_url('bubba-event.png')
      }
    ]
    # @imgs = [@event.id, @event.user.photo]
  end

  def new
    @event_booking = EventBooking.new
  end

  def create
    @event_booking       = EventBooking.new(event_booking_params)
    @event_booking.user  = current_user
    @event_booking.event = @event

    if @event_booking.save!
      redirect_to event_booking_path(@event_booking)
      # (event_booking:@event_booking.id)
    else
    render :new
    end
  end

  def edit
    @event = @event_booking.event
  end

  def update
    if @event_booking.update(event_booking_params)
      redirect_to event_booking_path(@event_booking)
    else
      render :new
    end
  end

  def destroy
    @event_booking.destroy
    redirect_to event_bookings_path
  end

  private

  def event_booking_params
    params.require(:event_booking).permit(:spaces_booked)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_event_booking
    @event_booking = EventBooking.find(params[:id])
  end

end
