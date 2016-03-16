class Screener
  def initialize
    @width = 0
  end
  def main_menu
    @width = `tput cols`.to_i
    system('clear')
    Utils.line_bar(1,@width)
    puts
    puts
    puts
    Utils.line_bar(1,@width)
    puts "1 - Create List"
  end
end
