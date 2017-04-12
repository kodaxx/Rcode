=begin
def print_arg(args = {})
    if args.has_key?(:x) then
        print args[:x]
    end
end
=end
#Prepatory Codes
def program(number)
  prg = "%05d" % number
  puts "O#{prg}"
end

def home()
  puts "G28"
end

def abs()
  puts "G90"
end

def inc()
  puts "G91"
end

def clear()
  puts "G40" #Cutter Comp Cancel
  puts "G80" #Canned Cycle Cancel
  puts "G49" #Tool Length Comp Cancel
end

def done()
  puts "M30"
end

def coolant(state)
  clnt = state.downcase
  if clnt == "on"
    puts "M08"
  else puts "M09"
  end
end

def dwell(time)
  puts "G04 P#{time}"
end

#Spindle/Speeds/Feeds
def tool(number)
  num = "%02d" % number
  puts "T#{num} M06"
end

def speed(rpm)
  puts "S#{rpm} M03" #TODO: Maybe add condition to check for 0 speed and use M05 to replace stop method
end

def stop()
  puts "M05"
end

def feed(ipm)
  puts "F#{ipm}"
end

#Movement
def rapid(args = {})
  axis = args.collect {|key,value| "#{key}#{value}".upcase }
  puts "G00 " + axis.join(" ")
end

def move(args = {})
  axis = args.collect {|key,value| "#{key}#{value}".upcase }
  puts "G01 " + axis.join(" ")
end

def cut(args = {})
  axis = args.collect {|key,value| "#{key}#{value}".upcase }
  puts "G01 " + axis.join(" ")
end