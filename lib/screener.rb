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

  def display_list(list)
    @width = `tput cols`.to_i
    system('clear')
    Utils.line_bar(1,@width)
    puts
    Utils.centered_print(list.name, @width)
    puts
    puts
    Utils.line_bar(1,@width)
    puts
    Utils.line_bar(1,@width)
    9.times do |x|
      if list.contents[x] != nil
        Utils.place_space
        print ((x+1).to_s + ".")
        Utils.place_space
        if list.completion[x] == 0
          print "X"
        else
          print "√"
        end
        Utils.centered_print(list.contents[x].to_s, @width-40)
        puts
      else
        puts
      end
      Utils.line_bar(1,@width)
    end
  end
end
