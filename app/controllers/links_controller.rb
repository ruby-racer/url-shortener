class LinksController < ApplicationController
  
  # GET /links/1
  def show
    redirect_to Link.find(params[:id].to_i(16)).original_url
  end
  
  # GET /links/new
  def new
    @link = Link.new
  end
  
  # POST /links
  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path, notice: view_context.notice_text(@link)
    else
      render :new
    end
  end
  
  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def link_params
    params.require(:link).permit(:original_url)
  end
end
