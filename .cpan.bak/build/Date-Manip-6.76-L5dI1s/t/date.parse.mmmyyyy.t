#!/usr/bin/perl -w

use Test::Inter;
$t = new Test::Inter 'date :: parse (no format_mmmyyyy)';
$testdir = '';
$testdir = $t->testdir();

use Date::Manip;
if (DateManipVersion() >= 6.00) {
   $t->feature("DM6",1);
}

$t->skip_all('Date::Manip 6.xx required','DM6');


sub test {
  (@test)=@_;
  if ($test[0] eq "config") {
     shift(@test);
     $obj->config(@test);
     return ();
  }

  my $err = $obj->parse(@test);
  if ($err) {
     return $obj->err();
  } else {
     $d1 = $obj->value();
     return($d1);
  }
}

$obj = new Date::Manip::Date;
$obj->config("forcedate","2000-01-21-00:00:00,America/New_York","yytoyyyy","c20");

$tests="

'Jun1925'   => '2025061900:00:00'

'Jun/1925'  => '[parse] Invalid date string'

'1925/Jun'  => '[parse] Invalid date string'

'1925Jun'   => '[parse] Invalid date string'

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
