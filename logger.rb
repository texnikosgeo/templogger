#!/usr/bin/env/ ruby 

require 'ds18b20'
t = Time.new
loop do
puts "start logging all known sensors"
psigio01 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01131bd96b2d/w1_slave")
psigio02 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed06baa/w1_slave")
psigio03 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed378aa/w1_slave")
frezzer01 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144edc6eaa/w1_slave")
frezzer02 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ee714aa/w1_slave")
corridor01 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2f406ff/w1_slave")
diadromos = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2fc97ff/w1_slave")

puts`echo at "#{t}" psigio01 temperature was:"#{psigio01.celsius}" >> ~/templogger/logs/psigio01/log.txt`
puts "at #{t} psigio01 temperature was:#{psigio01.celsius}"
puts`echo at "#{t}" psigio02 temperature was:"#{psigio02.celsius}" >> ~/templogger/logs/psigio02/log.txt`
puts "at #{t} psigio02 temperature was:#{psigio02.celsius}"
puts`echo at "#{t}" psigio03 temperature was:"#{psigio03.celsius}" >> ~/templogger/logs/psigio03/log.txt`
puts "at #{t} psigio03 temperature was:#{psigio03.celsius}"
puts`echo at "#{t}" frezzer01 temperature was:"#{frezzer01.celsius}" >> ~/templogger/logs/frezzer01/log.txt`
puts "at #{t} frezzer01 temperature was:#{frezzer01.celsius}"
puts`echo at "#{t}" frezzer02 temperature was:"#{frezzer02.celsius}" >> ~/templogger/logs/frezzer02/log.txt`
puts "at #{t} frezzer02 temperature was:#{frezzer02.celsius}"
puts`echo at "#{t}" corridor01 temperature was:"#{corridor01.celsius}" >> ~/templogger/logs/corridor01/log.txt`
puts "at #{t} corridor01 temperature was:#{corridor01.celsius}"
puts`echo at "#{t}" diadromos temperature was:"#{diadromos.celsius}" >> ~/templogger/logs/diadromos/log.txt`
puts "at #{t} diadromos temperature was:#{diadromos.celsius}"

sleep 900
end
