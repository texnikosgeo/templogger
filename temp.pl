#!/usr/bin/perl

$count = 0;

open(INDEX, "cat /sys/bus/w1/devices/w1_bus_master1/w1_master_slaves|");
@index = <INDEX>;
close(INDEX);

foreach (@index) {
  chop;
  $crc = "NO ";
  while ($crc ne "YES") {
    open(SENSOR, "cat /sys/bus/w1/devices/$_/w1_slave|");
    @data = <SENSOR>;
    close(SENSOR);
    $crc = substr(@data[0], 36, 3);
    $attempt++;
    die if ($attempt == 25);
  }
  my $temp = (substr(@data[1], 29, 5)/1000.00);
  my $fahr = ($temp*9.0/5.0)+32.00;
  $date = `date "+%d %b %H:%M:%S"`;
  chop $date;
  print "$date Sensor $count C: $temp \n";
  $count++;
}
