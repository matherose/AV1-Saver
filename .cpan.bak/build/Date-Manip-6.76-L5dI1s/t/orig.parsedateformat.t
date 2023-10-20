#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'Orig :: GetNext';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  return ParseDateFormat(@_);
}

Date_Init("ForceDate=2000-01-21-12:30:45,America/New_York");

$tests =q{

%Y\\.%m\\-%d
2000.12-13
   =>
   2000121300:00:00

'.*?\\[%d/%b/%Y:%T %z\\].*'
'10.11.12.13 - - [17/Aug/2009:12:33:30 -0400] "GET /favicon.ico ..."'
   =>
   2009081712:33:30

%r
'12:01:02 AM'
   =>
   2000012100:01:02

};

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
