#!/usr/bin/env/ ruby

require 'ds18b20'
require 'sinatra'

sensor1 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01131bd96b2d/w1_slave")
sensor2 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed06baa/w1_slave")
sensor3 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed378aa/w1_slave")
sensor4 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144edc6eaa/w1_slave")
sensor5 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ee714aa/w1_slave")
sensor6 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2f406ff/w1_slave")
sensor7 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2fc97ff/w1_slave")

s01 = sensor1.celsius
s02 = sensor2.celsius
s03 = sensor3.celsius
s04 = sensor4.celsius
s05 = sensor5.celsius
s06 = sensor6.celsius
s07 = sensor7.celsius


#sinatra

get '/' do
  erb :index
end

get '/num1' do
  t = Time.now

  "sensor num1 at #{t} temp is: #{s01}"

end

get '/num2' do
  t = Time.now

  "sensor num2 at #{t} temp is: #{s02}"

end

get '/num3' do
  t = Time.now

  "sensor num3 at #{t} temp is: #{s03}"

end

get '/num4' do
  t = Time.now

  "sensor num4 at #{t} temp is: #{s04}"

end

get '/num5' do
  t = Time.now

  "sensor num5 at #{t} temp is: #{s05}"

end

get '/num6' do
  t = Time.now

  "sensor num6 at #{t} temp is: #{s06}"

end

get '/num7' do
  t = Time.now

  "sensor num7 at #{t} temp is: #{s07}"

end

