# require 'minitest/autorun'
# require 'minitest/pride'
# require_relative '../test/to_do_tests'
require_relative '../utilities/futilities'
require_relative '../lib/screener'
require_relative '../lib/lists'
require_relative '../lib/scheduler'

class Lister
  def initialize
  end
  def run_lister
    sc = Scheduler.new
    screener = Screener.new
    choice = nil
    screener.main_menu
    choice = Utils.get_response("What would you like to do?")
    if choice.to_i == 1
      @working_list = sc.make_list
      puts @working_list.name
      sc.add_item(@working_list)
    elsif choice.to_s.upcase == "X"
      exit
    end
  end
end



Lister.new.run_lister
