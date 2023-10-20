#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'tz :: convert_to_gmt';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  (@test)=@_;
  return $obj->convert_to_gmt(@test);
}

$obj = new Date::Manip::TZ;
$obj->config("forcedate","now,America/New_York");

$tests="
[ 1985 01 01 12 00 00 ] America/New_York =>
  0 [ 1985 1 1 17 0 0 ] [ 0 0 0 ] 0 GMT

[ 1985 04 28 03 00 00 ] America/New_York =>
  0 [ 1985 4 28 7 0 0 ] [ 0 0 0 ] 0 GMT

[ 1985 10 27 01 00 00 ] America/New_York 0 =>
  0 [ 1985 10 27 6 0 0 ] [ 0 0 0 ] 0 GMT

[ 1985 10 27 01 00 00 ] America/New_York 1 =>
  0 [ 1985 10 27 5 0 0 ] [ 0 0 0 ] 0 GMT

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
