class BookingsController < ApplicationController
  def new
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email)
  end
end
