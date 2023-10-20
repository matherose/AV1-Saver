#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'base :: join';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  (@test)=@_;
  @ret = $obj->join(@test);
  return @ret;
}

$dmt = new Date::Manip::TZ;
$obj = $dmt->base();
$dmt->config("forcedate","now,America/New_York");

$tests="

date [ 1996 1 1 12 0 0 ] => 1996010112:00:00

############

offset [ 10 0 0 ]    => +10:00:00

offset [ 10 0 ]      => +10:00:00

offset [ 10 ]        => +10:00:00

offset [ 10 70 ]     => __undef__

offset [ 10 -30 ]    => __undef__

offset [ 1 2 3 4 ]   => __undef__

offset [ -10 -20 0 ] => -10:20:00

############

hms [ 10 0 0 ]       => 10:00:00

hms [ 10 0 ]         => 10:00:00

hms [ 10 ]           => 10:00:00

hms [ 10 70 ]        => __undef__

hms [ 1 2 3 4 ]      => __undef__

hms [ -10 30 ]       => __undef__

############

time [ 10 -70 ]      => 0:8:50

time [ 1 2 3 4 ]     => __undef__

time [ 10 70 ]       => 0:11:10

time [ 0 0 5 ]       => 0:0:5

time [ 0 5 ]         => 0:0:5

time [ 5 ]           => 0:0:5

time [ 0 5 30 ]      => 0:5:30

time [ 0 0 -5 ]      => 0:0:-5

time [ 0 -5 -30 ]    => 0:-5:30

time [ -5 -30 -45 ]  => -5:30:45

time [ 0 10 70 ]                                => 0:11:10

time [ 0 10 70 ] 1                              => 0:10:70

time [ 0 10 70 ] { nonorm 1 }                   => 0:10:70

############

delta [ 0 0 0 0 0 0 10 ]                        => 0:0:0:0:0:0:10

delta [ 0 0 0 0 10 ]                            => 0:0:0:0:0:0:10

delta [ 0 0 10 ]                                => 0:0:0:0:0:0:10

delta [ 10 ]                                    => 0:0:0:0:0:0:10

delta [ 0 0 0 0 0 10 -70 ]          nonormalize => 0:0:0:0:0:10:-70

delta [ 0 0 0 0 0 10 -70 ]                      => 0:0:0:0:0:8:50

delta [ 0 0 0 0 0 10 70 ]                       => 0:0:0:0:0:11:10

delta [ 10 -70 -130 90 ]                        => 0:0:0:6:23:51:30

delta [ -1 -13 -2 -10 70 -130 -90 ]             => -2:1:3:0:4:11:30

delta [ 1 13 2 10 -70 -130 90 ]                 => 2:1:2:6:23:51:30

############

business [ 0 0 0 0 0 0 10 ]                     => 0:0:0:0:0:0:10

business [ 0 0 0 0 10 ]                         => 0:0:0:0:0:0:10

business [ 0 0 10 ]                             => 0:0:0:0:0:0:10

business [ 10 ]                                 => 0:0:0:0:0:0:10

business [ 0 0 0 0 0 10 -70 ]                   => 0:0:0:0:0:8:50

business [ 0 0 0 0 0 10 70 ]                    => 0:0:0:0:0:11:10

business [ 10 -70 -130 -90 ]                    => 0:0:0:1:8:48:30

business [ -1 -13 -2 -10 25 -130 -90 ]          => -2:1:3:2:4:11:30

business [ 1 13 2 10 -25 -130 90 ]              => 2:1:3:1:8:51:30

";

$t->tests(func  => \&test,
          tests => $tests);
$t->done_testing();

#Local Variables:
#mode: cperl
#indent-tabs-mode: nil
#cperl-indent-level: 3
#cperl-continued-statement-offset: 2
#cperl-continued-brace-offset: 0
#cperl-brace-offset: 0
#cperl-brace-imaginary-offset: 0
#cperl-label-offset: 0
#End:
