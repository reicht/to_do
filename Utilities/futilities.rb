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

  def Utils.place_space
    print " " * 8
  end

  def Utils.get_response(prompt = "")
    print prompt + "   "
    gets.chomp
  end

  def Utils.centered_print(msg, width)
    puts " " * (width/2 - (msg.length))
  end
end
