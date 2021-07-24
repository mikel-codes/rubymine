require 'gserver'

class LogServer <  GServer
  def initialize
    super(12345)
  end
  def serve(client)
    client.puts get_end_of_logfile
  end


  private 
    def get_end_of_logfile 
      File.open("/var/www/carter/Readme.md") do |log|
      log.seek(-500, IO::SEEK_END)
      log.gets  #ignore partial line
      log.read
      end
    end
end


server = LogServer.new
server.start.join
