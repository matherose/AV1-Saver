#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'DM5 :: DateCalc (date,delta,exact)';
$testdir = '';
$testdir = $t->testdir();

BEGIN {
   $Date::Manip::Backend = 'DM5';
}

use Date::Manip;
if ($] < 5.010  ||  $ENV{'DATE_MANIP_TEST_DM5'}) {
   $t->feature("TEST_DM5",1);
}

$t->skip_all('Date::Manip 5.xx tests ignored (set DATE_MANIP_TEST_DM5 to test)',
             'TEST_DM5');

Date_Init("TZ=EST");
$tests="

'Wed Feb 7 1996 8:00' +1:1:1:1 '0 =>' 1996020809:01:01

'Wed Nov 20 1996 noon' +0:5:0:0 '0 =>' 1996112017:00:00

'Wed Nov 20 1996 noon' +0:13:0:0 '0 =>' 1996112101:00:00

'Wed Nov 20 1996 noon' +3:2:0:0 '0 =>' 1996112314:00:00

'Wed Nov 20 1996 noon' -3:2:0:0 '0 =>' 1996111710:00:00

'Wed Nov 20 1996 noon' +3:13:0:0 '0 =>' 1996112401:00:00

'Wed Nov 20 1996 noon' +6:2:0:0 '0 =>' 1996112614:00:00

'Dec 31 1996 noon' +1:2:0:0 '0 =>' 1997010114:00:00

'Jan 31 1997 23:59:59' '+ 1 sec' '0 =>' 1997020100:00:00

'20050215 13:59:11' -10h '0 =>' 2005021503:59:11

'20050215 13:59:11' -10h+0s '0 =>' 2005021503:59:11

";

$t->tests(func  => \&DateCalc,
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
