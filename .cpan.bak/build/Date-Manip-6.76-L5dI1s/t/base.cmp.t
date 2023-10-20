#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'base :: cmp';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  (@test)=@_;
  @ret = $obj->cmp(@test);
  return @ret;
}

$dmt = new Date::Manip::TZ;
$obj = $dmt->base();
$dmt->config("forcedate","now,America/New_York");

$tests="

[ 2007 01 15 10 00 00 ] [ 2007 01 15 12 00 00 ] => -1

[ 2007 01 15 12 00 00 ] [ 2007 01 15 10 00 00 ] => 1

[ 2007 01 15 12 00 00 ] [ 2007 01 15 12 00 00 ] => 0

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
