require 'colorize'
require_relative 'reflog'

class ReflogReview

  attr_accessor :log

  def initialize
    @log = Reflog.new
  end

  def command_?
    puts [
      "j - next commit",
      "k - previous commit",
      "s - show current head",
      "p - pick commit",
      "q - quit",
      "? - print help",
    ].join("\n").colorize(:light_red)
  end

  def command_j
    log.next and show_head
  end

  def command_k
    log.prev and show_head
  end

  def command_s
    show_head
  end

  def command_p
    log.pick and command_q
  end

  def command_q
    puts "\n\nYou just lost the game.".colorize(:black)
    exit
  end

  def method_missing(method, *args)
    puts "Invalid input."
    command_?
  end

  def prompt!
    status = "Is this the drone you are looking for [j,k,s,p,q,?]? "
    print status.colorize(:light_blue)
  end

  def show_head
    log.show.split("\n").each do |line|
      if line.match /^\+/
        puts line.colorize(:green)
      elsif line.match /^\-/
        puts line.colorize(:red)
      elsif new_line = line.match(/commit [a-f0-9]{40}$/)
        puts new_line.to_s.colorize(:yellow)
      elsif line.match /^@@/
        print line.split('@@ ')[0] + '@@ '.colorize(:light_blue)
        puts line.split('@@ ')[1]
      else
        puts line
      end
    end
  end

  def iterate
    show_head
    loop do
      prompt!
      send("command_#{gets.chomp.to_sym}")
    end
  end

end
