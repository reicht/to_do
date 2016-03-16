require 'minitest/autorun'
require 'minitest/pride'
require_relative '../test/to_do_tests'
require_relative '../utilities/futilities'
require_relative '../lib/screener'
require_relative '../lib/lists'
require_relative '../lib/scheduler'
require_relative '../lib/binder'

class Lister
  def initialize
    @sc = Scheduler.new
  end
  def run_lister
    choice = nil
    Screener.new.main_menu
    choice = Utils.get_response("What would you like to do?")
    if choice.to_i == 1
      @working_list = @sc.make_list
      @sc.add_item(@working_list)
      @sc.view_edit(@working_list)
    elsif choice.to_s.upcase == "X"
      exit
    else
      Utils.get_response("Please select an option")
      run_lister
    end
  end
end



Lister.new.run_lister
