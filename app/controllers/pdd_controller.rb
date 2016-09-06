class PddController < ApplicationController

  def show

end
def pdf
  pdf_filename = File.join(Rails.root, "2.pdf")
  send_file(pdf_filename, :filename => "2.pdf", :type => "application/pdf")
end
end
