class Screener
  def initialize
    @width = 0
  end
  def main_menu
    @width = `tput cols`.to_i
    system('clear')
    Utils.line_bar(1,@width)
    Utils.centered_print(" __    __  ____  ____  ____  ____ ", @width)
    Utils.centered_print("(  )  (  )/ ___)(_  _)(  __)(  _ \\\ ", @width)
    Utils.centered_print("/ (_/\\\ )( \\\___ \\\  )(   ) _)  )   /", @width)
    Utils.centered_print("\\\____/(__)(____/ (__) (____)(__\\\_)", @width)
    Utils.line_bar(1,@width)
    Utils.centered_print("1 - Create List", @width)
    puts
    Utils.line_bar(1,@width)
    Utils.centered_print("X - E(X)it Lister", @width)
    puts
  end

  def display_list(list)
    @width = `tput cols`.to_i
    system('clear')
    Utils.line_bar(1,@width)
    puts
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
      else
        puts
      end
      Utils.line_bar(1,@width)
    end
  end
end
