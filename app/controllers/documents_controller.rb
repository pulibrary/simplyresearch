class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @document = current_user.documents.new
  end

  def create
    @document = current_user.documents.new(document_params)
    if @document.save
      redirect_to @document, notice: "Document was successfully uploaded."
    else
      render :new
    end
  end

  def show
    @document = Document.find(params[:id])
  end

  private

  def document_params
    params.require(:document).permit(:title, :pdf)
  end
end
