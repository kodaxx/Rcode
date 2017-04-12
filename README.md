# Rcode

_Readable Gcode_

Rcode is a (thus far incomplete) human readble layer on top of standard Gcode, written in Ruby. Programs are written using standard Rcode methods and the _converted_ to Gcode via the context menu. For those that manually write Gcode, this should be a simple and convenient way to generate those programs. All standard Ruby scripting is also supported, so one could build sub-programs by creating a Ruby method.

# Basic Use

Use the Rcode methods to create your desired tool path.
Then:
> _Save file as>filename.rb_ 
> _Right-click>Send To>Convert to Gcode_

_example:_
```ruby
program(1) #Square

#Square sub-program
def square
  feed(2.0)
  move(y:1.1875)
  move(x:1.1875)
  move(y:0.3125)
  move(x:0.3125)
end

#Square program
home
abs
clear
tool(1)
#origin (missing)
#tool geometry (missing)
speed(2000)
rapid(x:0., y:0., z:0.1)
rapid(x:0.3125, y:0.3125)
coolant("on")
cut(z:-0.11, f:0.5)
square
cut(z:-0.22, f:0.5)
square
cut(z:-0.33, f:0.5)
square
cut(z:-0.44, f:0.5)
square
rapid(z:2.0)
coolant("off")
home
abs
clear
stop
```

# Current Rcode Methods

All codes will have detailed docstrings and examples.
#### Preparatory Codes
> program(number)
> home
> abs
> inc
> clear
> done
> coolant(state)

#### Spindle/Speeds/Feeds
> tool(number)
> speed(rpm)
> stop
> feed(ipm)

#### Movement
> dwell(seconds)
> rapid(x:0, y:0, z:0)
> move(x:0, y:0, z:0)
> cut(z:0, f:0)

# Installation

The easiest method to install Rcode is with the installer located in the **dist** folder

> Install Ruby (if you do not have it already)
> Add the .msi extension to the 'rcode' file in the **dist** folder (github not letting me upload)
> Run the rcode.msi program from the **dist** folder

# TODO

Add more methods

# Credits

This software was developed by Spencer Kuzara while attending Sheridan College Machine Tool Program.