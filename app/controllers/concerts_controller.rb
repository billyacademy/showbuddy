class ConcertsController < ApplicationController
    def new
      @concert = Concert.new
    end
end
