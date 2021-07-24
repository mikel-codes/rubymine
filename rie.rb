require 'gserver'
class Rio < GServer

  def initialize
    super(12445)
  end

  
  def server(client)
    client.puts get_end_log_file
  end
  private
  
  def get_end_log_file
    File.open("/var/log/sys.log") do |log|
    log.seek(-500, IO::SEEK_END)
    log.gets
    log.read
  end
end
  
For

Log = Rio.new
Log.jstart.join
