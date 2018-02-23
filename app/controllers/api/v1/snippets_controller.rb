class Api::V1::SnippetsController < ApiController
  before_action :set_snippet, only: :show
  def index
    @snippets = Snippet.all
    respond_to do |format|
      format.json { render json: @snippets, status: :success }
      format.xml { render xml: @snippets, status: :success }
    end
  end
  
  def show
    respond_to do |format|
      if @snippet.save
        format.json { render json: @snippet, status: :success }
        format.xml { render xml: @snippet, status: :success }
      end
    end
  end
  
  def create
    @snippet = Snippet.new(snippet_params)
    respond_to do |format|
      if @snippet.save
        format.json { render json: @snippet, status: :success }
        format.xml { render xml: @snippet, status: :success }
      else
        format.json { render json: @snippet.errors.full_messages.join(','), status: :unprocessenity }
        format.xml { render xml: @snippet.errors.full_messages.join(','), status: :unprocessenity }
      end
    end
  end
  
  private
  def set_snippet
    @snippet = Snippet.find(params[:id])
  end
  
  def snippet_params
    params.require(:snippet).permit!
  end
  
end