class ContactsController < ApplicationController
  
def new
    @contact = Contact.new
end

def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      ContactsMailer.contacts_email(@contact).deliver
      redirect_to("/contact", :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end
