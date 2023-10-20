#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'Orig :: Date_NthDayOfYear';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  my(@tmp)=Date_NthDayOfYear(@_);
  push @tmp,sprintf("%.2f",pop(@tmp));
  return join(":",@tmp);
}

Date_Init("ForceDate=1997-03-08-12:30:00,America/New_York");

$tests="

1997 10                 => 1997:1:10:0:0:0.00

1997 10.5               => 1997:1:10:12:0:0.00

1997 10.510763888888889 => 1997:1:10:12:15:30.00

1997 10.510770138888889 => 1997:1:10:12:15:30.54

2000 31                 => 2000:1:31:0:0:0.00

2000 31.5               => 2000:1:31:12:0:0.00

2000 32                 => 2000:2:1:0:0:0.00

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
