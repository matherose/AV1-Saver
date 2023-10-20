#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'base :: check';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  (@test) = @_;
  @ret    = $obj->check(@test);
  return @ret;
}

$dmt = new Date::Manip::TZ;
$obj = $dmt->base();
$dmt->config("forcedate","now,America/New_York");

$tests="

[ a b c d e f ]         => 0

[ 1990 13 1 1 1 1 ]     => 0

[ 1990 7 3 0 0 0 ]      => 1

[ 1990 7 3 24 0 0 ]     => 1

[ 1990 7 3 24 30 0 ]    => 0

[ 1990 07 03 00 00 00 ] => 1

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
