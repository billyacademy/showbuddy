class Admin::VenuesController < ApplicationController
  before_action :check_if_admin

  def index
    @venues = Venue.order('name ASC')
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to admin_venues_path
    else
      redirect_to new_admin_venue_path
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    if @venue.destroy
      flash[:notice] = "Venue successfully deleted"
      redirect_to admin_venues_path
    else
      flash[:alert] = "Failed to delete venue."
      redirect_to admin_venues_path
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update_attributes(venue_params)
      flash[:notice] = "You have successfully updated the venue"
      redirect_to admin_venues_path
    else
      redirect_to edit_admin_venue_path()
      flash[:alert] = "You must be signed in to update a venue."
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address_line_1, :address_line_2,
    :city, :state, :zip, :website)
  end

  def check_if_admin
    if current_user.admin?
    else
      flash[:notice] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
end
