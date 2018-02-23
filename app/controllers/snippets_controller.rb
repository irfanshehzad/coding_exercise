class SnippetsController < ApplicationController
  before_action :set_snippet, only: :show
  
  def show
    
  end
  
  def new
    @snippet = Snippet.new
  end
  
  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      flash[:notice] = "Snippet Created Successfully."
      redirect_to snippet_path(@snippet)
    else
      render :new
    end
  end
  
  private
  
  def set_snippet
    @snippet = Snippet.find params[:id]
  end
  
  def snippet_params
    params.require(:snippet).permit!
  end
  
end