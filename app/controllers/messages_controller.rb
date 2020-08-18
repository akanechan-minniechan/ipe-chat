class MessagesController < ApplicationController

    def index
        @messages = Message.all
        # @message = Message.new
    end

    def create
        binding.pry
    end

end