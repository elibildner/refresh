class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def pdfs
  	@user = User.first
  	respond_to do |format|
  		format.html
  		format.pdf do
  			img = "./app/assets/images/template_framework_framework.jpg"
  			pdf = CertificatePdf.new(:page_layout => :landscape,
  									  :background => img)
  			pdf.text "Hello world!"
  			send_data pdf.render, filename: "Translation Certificate, #{@user}",
  			type: "application/pdf"
  		end
  	end
  end

end
