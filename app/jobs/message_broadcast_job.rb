class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', message: render_message(message)
  end


  private

  def render_message(message)
    puts "====================="
    puts message.inspect
    puts "====================="

    ApplicationController.renderer.render(partial: 'messages/message', locals: {message: message})
  end
end
