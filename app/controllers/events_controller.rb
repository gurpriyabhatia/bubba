class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_group, only: [:create, :update]

  def index
    if (params[:group_id])
      @group = Group.find(params[:group_id])
      @events = @group.events.order(:date)
    else
      @events = Event.order(:date)
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
