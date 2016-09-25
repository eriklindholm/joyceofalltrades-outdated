class EnquiriesController < ApplicationController

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      redirect_to thanks_enquiries_url
    else
      render :new
    end
  end

  def thanks
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:name, :contact, :body)
  end

end
