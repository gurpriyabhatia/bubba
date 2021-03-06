class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

    def home
    end

    def dashboard
      @nannies = Nanny.all
      @groups = Group.all
      @events = Event.all
      @event_bookings = current_user.event_bookings
      @nanny_bookings = current_user.nanny_bookings.order("date DESC")

      if params["event_booking"].present?
        @current_booking_id = params["event_booking"]
        @current_booking = EventBooking.find(@current_booking_id)
      end
    end

    def advice
      @users = User.all
    end
end
