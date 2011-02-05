class ContactsController < ApplicationController
  before_filter :require_user

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    1.times { @contact.addresses.build }
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.lastupdateuser = current_user
    @contact.createduser = current_user
    @contact.lastupdatedate = DateTime.new
    @contact.creationdate = DateTime.new
    if @contact.save
      flash[:notice] = "Successfully created contact."
      redirect_to @contact
    else
      render :action => 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Successfully updated contact."
      redirect_to @contact
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:notice] = "Successfully destroyed contact."
    redirect_to contacts_url
  end
end
