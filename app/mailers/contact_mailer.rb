class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "amin.mba@iuj.ac.jp", subject: "Inquiry confirmation email"
  end
end
