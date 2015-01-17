class SearchesController < ApplicationController
  def index
    @results = Concert.search(params[:query])
  end
end
