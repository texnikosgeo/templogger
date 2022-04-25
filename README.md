# templogger
an attempt for raspberry temperature logger


       If no sensors aveliable  Enable the One-Wire Interface
       We’ll need to enable the One-Wire interface before the 
       Pi can receive data from the sensor.
       Once you’ve connected the DS18B20, power up your Pi and 
       log in, then follow these steps
       to enable the One-Wire interface:
         A. At the command prompt, enter sudo nano /boot/config.txt, 
            then add this to the bottom
            of the file: dtoverlay=w1-gpio
         B. Exit Nano, and reboot the Pi with sudo reboot
         C. Log in to the Pi again, and at the command prompt 
            enter sudo modprobe w1-gpio
         D. Then enter sudo modprobe w1-therm
         
         
After running sensors_setup.rb and name all sensors, edit logger.rb accordingly

# Example sensors file after sensors_setup.rb
   cat ~/templogger/sensors/sensors 
   
   28-01131bd96b2d, psigio02
   
   28-01144ed06baa, psigio01
   
   28-01144ed378aa, psigio03
   
   28-01144edc6eaa, frezzer01
   
   28-01144ee714aa, frezzer02
   
   28-0417a2f406ff, corridor01
   
   28-0417a2fc97ff, diadromos

# Example temp_real_time.rb file after sensors_setup.rb
   cat temp_real_time.rb 
   #!/usr/bin/env/ ruby

   require 'ds18b20'

    #Temp read.

   psigio02 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01131bd96b2d/w1_slave")

   puts "temp for psigio02 is #{psigio02.celsius} celsius"

   psigio01 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed06baa/w1_slave")

   puts "temp for psigio01 is #{psigio01.celsius} celsius"

   psigio03 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ed378aa/w1_slave")

   puts "temp for psigio03 is #{psigio03.celsius} celsius"

   frezzer01 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144edc6eaa/w1_slave")

   puts "temp for frezzer01 is #{frezzer01.celsius} celsius"

   frezzer02 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-01144ee714aa/w1_slave")

   puts "temp for frezzer02 is #{frezzer02.celsius} celsius"

   corridor01 = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2f406ff/w1_slave")

   puts "temp for corridor01 is #{corridor01.celsius} celsius"

   diadromos = Ds18b20::Parser.new("/sys/bus/w1/devices/28-0417a2fc97ff/w1_slave")

   puts "temp for diadromos is #{diadromos.celsius} celsius"


   
