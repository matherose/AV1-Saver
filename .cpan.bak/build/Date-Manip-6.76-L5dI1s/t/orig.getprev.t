#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'Orig :: GetPrev';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  return Date_GetPrev(@_);
}

Date_Init("ForceDate=1997-03-08-12:30:00,America/New_York");

$tests="

'Fri Nov 22 1996 17:49:30' thu 0 => 1996112117:49:30

'Fri Nov 22 1996 17:49:30' thu 1 => 1996112117:49:30

'Fri Nov 22 1996 17:49:30' fri 0 => 1996111517:49:30

'Fri Nov 22 1996 17:49:30' 5 0 => 1996111517:49:30

'Fri Nov 22 1996 17:49:30' fri 1 => 1996112217:49:30

'Fri Nov 22 1996 17:49:30' fri 0 18:30 => 1996111518:30:00

'Fri Nov 22 1996 17:49:30' fri 0 18:30:45 => 1996111518:30:45

'Fri Nov 22 1996 17:49:30' fri 0 18 30 => 1996111518:30:00

'Fri Nov 22 1996 17:49:30' fri 0 18 30 45 => 1996111518:30:45

'Fri Nov 22 1996 17:49:30' fri 1 18 30 45 => 1996112218:30:45

'Fri Nov 22 1996 17:49:30' fri 2 18 30 45 => 1996111518:30:45

'Fri Nov 22 1996 17:49:30' __undef__ 0 18 => 1996112118:00:00

'Fri Nov 22 1996 17:49:33' __undef__ 0 18:30 => 1996112118:30:00

'Fri Nov 22 1996 17:49:33' __undef__ 0 18 30 => 1996112118:30:00

'Fri Nov 22 1996 17:49:33' __undef__ 0 18:30:45 => 1996112118:30:45

'Fri Nov 22 1996 17:49:33' __undef__ 0 18 30 45 => 1996112118:30:45

'Fri Nov 22 1996 17:49:33' __undef__ 0 18 __undef__ 45 => 1996112118:00:45


'Fri Nov 22 1996 17:00:00' __undef__ 0 17 => 1996112117:00:00

'Fri Nov 22 1996 17:00:00' __undef__ 1 17 => 1996112217:00:00

'Fri Nov 22 1996 17:49:00' __undef__ 0 17 49 => 1996112117:49:00

'Fri Nov 22 1996 17:49:00' __undef__ 1 17 49 => 1996112217:49:00

'Fri Nov 22 1996 17:49:33' __undef__ 0 17 49 33 => 1996112117:49:33

'Fri Nov 22 1996 17:49:33' __undef__ 1 17 49 33 => 1996112217:49:33

'Fri Nov 22 1996 17:00:33' __undef__ 0 17 __undef__ 33 => 1996112117:00:33

'Fri Nov 22 1996 17:00:33' __undef__ 1 17 __undef__ 33 => 1996112217:00:33



'Fri Nov 22 1996 17:49:30' __undef__ 0 __undef__ 30 => 1996112217:30:00

'Fri Nov 22 1996 17:49:30' __undef__ 0 __undef__ 30 45 => 1996112217:30:45

'Fri Nov 22 1996 17:49:30' __undef__ 0 __undef__ __undef__ 30 => 1996112217:48:30



'Fri Nov 22 1996 17:30:00' __undef__ 0 __undef__ 30 => 1996112216:30:00

'Fri Nov 22 1996 17:30:00' __undef__ 1 __undef__ 30 => 1996112217:30:00

'Fri Nov 22 1996 17:30:45' __undef__ 0 __undef__ 30 45 => 1996112216:30:45

'Fri Nov 22 1996 17:30:45' __undef__ 1 __undef__ 30 45 => 1996112217:30:45

'Fri Nov 22 1996 17:30:45' __undef__ 0 __undef__ __undef__ 45 => 1996112217:29:45

'Fri Nov 22 1996 17:30:45' __undef__ 1 __undef__ __undef__ 45 => 1996112217:30:45

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
