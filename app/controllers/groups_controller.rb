class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @markers = @groups.map do |group|
      { lat: group.latitude, lng: group.longitude,
        infoWindow: render_to_string(partial: "info_window",
        locals: { group: group }),
        image_url: group.group_picture.service_url }
    end
    @imgs = @groups.map { |group| [group.id, group.group_picture] }
  end

  def show
    @group = Group.find(params[:id])
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
end
