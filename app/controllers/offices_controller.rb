class OfficesController < ApplicationController
  def index
  end

  def show
    @office = Office.find(params[:id])
  end
end
