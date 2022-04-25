#!/usr/bin/env/ ruby
require 'ds18b20'

# Temp read.
sensor1 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01131bd96b2d/w1_slave")
sensor2 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed06baa/w1_slave")
sensor3 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed378aa/w1_slave")
sensor4 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144edc6eaa/w1_slave")
sensor5 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ee714aa/w1_slave")
sensor6 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2f406ff/w1_slave")
sensor7 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2fc97ff/w1_slave")

puts "temp for sensor 1 is #{sensor1.celsius} celsius" 
puts "temp for sensor 2 is #{sensor2.celsius} celsius" 
puts "temp for sensor 3 is #{sensor3.celsius} celsius" 
puts "temp for sensor 4 is #{sensor4.celsius} celsius" 
puts "temp for sensor 5 is #{sensor5.celsius} celsius" 
puts "temp for sensor 6 is #{sensor6.celsius} celsius" 
puts "temp for sensor 7 is #{sensor7.celsius} celsius" 
