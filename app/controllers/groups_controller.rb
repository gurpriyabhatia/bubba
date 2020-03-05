class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update]
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
    @events = @group.events
    @nannies = @group.nannies
    @users = @group.users
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    # Update user group, so use can join the current group
    @user = current_user
    @user.group = @group
    @user.save!
    redirect_to group_path(@group)
  end

  def destroy
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
