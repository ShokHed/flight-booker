class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:number_of_passengers].to_i.times { @booking.passengers.build }
    # @passengers = params[:number_of_passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        # PassengerMailer.with(passengers: @booking.passengers).confirmation_email.deliver_now
        @booking.passengers.each { |passenger| PassengerMailer.with(passenger: passenger).confirmation_email.deliver_now }
        
        format.html { redirect_to booking_path(@booking), notice: "#{@booking.passengers.count} #{'booking'.pluralize(@booking.passengers.count)} successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email ])
  end
end
