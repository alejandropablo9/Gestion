class TicketController < ApplicationController
    def index        
        @scores = Score.all
    end
end
