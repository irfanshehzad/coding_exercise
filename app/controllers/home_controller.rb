class HomeController < ApplicationController
  def index
    @snippets = Snippet.paginate(:page => params[:page], :per_page => 20)
  end
end