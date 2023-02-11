class PassengerMailer < ApplicationMailer

  def confirmation_email
    @passenger = params[:passenger]
    @url = 'http://test.com'
    mail(
          to: @passenger.email, 
          subject: 'Thank you for booking a trip with us!'
        )
    
  end

end
