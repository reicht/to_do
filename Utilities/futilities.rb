module Utils
  def Utils.interceptor
    puts "Press enter to continue"
    get_response
  end

  def Utils.line_bar(num = 1, length = 50)
    num.times do
      puts "-" * length
    end
  end

  def Utils.place_space(distance = 8)
    print " " * distance
  end

  def Utils.get_response(prompt = "")
    print prompt + "   "
    gets.chomp
  end

  def Utils.centered_print(msg, width)
    print " " * (width/2 - (msg.length / 2))
    print msg
  end

end
