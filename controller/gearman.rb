require 'rubygems'

class GearmanController < Controller
  engine :Erubis

  def index
    @found = []
    conf = YAML.load_file( 'conf/gearman.yml' )
    server = [conf['gearman']['server']]
    conf['gearman']['workers'].each do |@worker|
      Gearman::Util.debug = true
      w = Gearman::Server.new("#{server}")
      @status = w.status.grep(/#{@worker}/)
      @found << @status.to_s.split("\t")
    end
  end
end
