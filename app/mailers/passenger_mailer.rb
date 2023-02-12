class PassengerMailer < ApplicationMailer

  def confirmation_email
    @passenger = params[:passenger]

    mail(
          to: @passenger.email, 
          subject: 'Thank you for booking a trip with us!'
        )
  end

end
