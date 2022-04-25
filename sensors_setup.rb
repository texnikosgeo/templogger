#!/usr/bin/env ruby

puts " Setup sensors names e.x. 28-01144ee*****/ -> Freezer 01
        creates a folder in home directory with name given and
        assosiates sensor with it
     "
puts `ls /sys/bus/w1/devices/`
puts "sensor setup is:"
puts `cat /home/alerter/templogger/sensors/sensors`
puts "whitch sensor you want to setup ?
give full name."
sensor_name = gets.chomp     
puts "Give desired name:"
desired_name = gets.chomp
# puts `mkdir -p /home/alerter/templogger/sensors`
puts `mkdir -p /home/alerter/templogger/sensors/`
puts `mkdir -p ~/templogger/logs/"#{desired_name}"`
puts `touch /home/alerter/templogger/sensors/sensors`
puts `touch /home/alerter/templogger/logs/"#{desired_name}"/log.txt`
puts `ln -s /sys/bus/w1/devices/"#{sensor_name}"/w1_slave ~/templogger/sensors/"#{desired_name}"`
puts "#{desired_name} is in home/alerter/templogger/sensors"
puts `echo "#{sensor_name}, #{desired_name}" >> /home/alerter/templogger/sensors/sensors`

#puts `echo "#{desired_name}" = Ds18b20::Parser.new\(\"/sys/bus/w1/devices/"#{sensor_name}"/w1_slave\"\) >> ~/templogger/test.rb`
#puts `echo puts "temp for #{desired_name} is #{desired_name}.celsius celsius"  >> ~/templogger/test.rb`

file = File.open("/home/alerter/templogger/temp_real_time.rb","a+")
while (!file.eof?)
  line = file.readline
  file.write("\n""#{desired_name}"' = Ds18b20::Parser.new("/sys/bus/w1/devices/'"#{sensor_name}"'/w1_slave")'"\n")
end
file = File.open("/home/alerter/templogger/temp_real_time.rb","a+")
while (!file.eof?)
  line = file.readline
  file.write("\n"'puts "temp for '"#{desired_name}"' is #{'"#{desired_name}"'.celsius} celsius"'"\n")
end
