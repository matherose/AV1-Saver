#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'base :: _fix_year (C)';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  (@test)=@_;
  @ret = $obj->_fix_year(@test);
  return @ret;
}

$dmt = new Date::Manip::TZ;
$obj = $dmt->base();
$dmt->config("forcedate","now,America/New_York");
$obj->_method("c");

$y  = ( localtime(time) )[5];
$y += 1900;
$y  =~ /^(..)/;
$c  = $1;

$tests="

1999  => 1999

2000  => 2000

00    => ${c}00

05    => ${c}05

99    => ${c}99

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
