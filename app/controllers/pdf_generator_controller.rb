class PdfGeneratorController < ApplicationController
  def generate_pdf
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name"  # Substitua "file_name" pelo nome desejado para o arquivo PDF
      end
    end
  end
end
