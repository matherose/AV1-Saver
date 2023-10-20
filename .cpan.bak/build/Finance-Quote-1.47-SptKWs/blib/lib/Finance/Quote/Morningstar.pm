package Finance::Quote::Morningstar;
require 5.004;

use strict;

use vars qw( $MORNINGSTAR_SE_FUNDS_URL);

use LWP::UserAgent;
use HTTP::Request::Common;
use HTML::TableExtract;

our $VERSION = '1.47'; # VERSION
$MORNINGSTAR_SE_FUNDS_URL = 'http://morningstar.se/Funds/Quicktake/Overview.aspx?perfid=';

sub methods { return (morningstar => \&morningstar); }

{
  my @labels = qw/date isodate method source name currency price/;

  sub labels { return (morningstar => \@labels); }
}

sub morningstar {
  my $quoter  = shift;
  my @symbols = @_;

  return unless @symbols;
  my ($ua, $reply, $url, %funds, $te, $table, $row, @value_currency, $name);

  foreach my $symbol (@symbols) {
    $name = $symbol;
    $url = $MORNINGSTAR_SE_FUNDS_URL;
    $url = $url . $name;
    $ua    = $quoter->user_agent;
    $reply = $ua->request(GET $url);
    unless ($reply->is_success) {
	  foreach my $symbol (@symbols) {
        $funds{$symbol, "success"}  = 0;
        $funds{$symbol, "errormsg"} = "HTTP failure";
	  }
	  return wantarray ? %funds : \%funds;
    }

    $te = HTML::TableExtract->new();
    $te->parse($reply->decoded_content);
    #print "Tables: " . $te->tables_report() . "\n";
    for my $table ($te->tables()) {
        for my $row ($table->rows()) {
            if (defined(@$row[0])) {
                if ('Senaste NAV' eq substr(@$row[0],0,11)) {
                    my $date = $$row[2];
                    @value_currency = split(' ', $$row[1]);
                    $funds{$name, 'method'}   = 'morningstar_funds';
                    $value_currency[0] =~ s/,/\./;
                    $funds{$name, 'price'}    = $value_currency[0];
                    $funds{$name, 'currency'} = $value_currency[1];
                    $funds{$name, 'success'}  = 1;
                    $funds{$name, 'symbol'}  = $name;
                    $quoter->store_date(\%funds, $name, {isodate => $date});
                    $funds{$name, 'source'}   = 'Finance::Quote::Morningstar';
                    $funds{$name, 'name'}   = $name;
                    $funds{$name, 'p_change'} = "";  # p_change is not retrieved (yet?)
                }
            }
        }
    }

    # Check for undefined symbols
    foreach my $symbol (@symbols) {
	  unless ($funds{$symbol, 'success'}) {
        $funds{$symbol, "success"}  = 0;
        $funds{$symbol, "errormsg"} = "Fund name not found";
	  }
    }
  }
  return %funds if wantarray;
  return \%funds;
}

1;

=head1 NAME

Finance::Quote::Morningstar - Obtain fund prices the Fredrik way

=head1 SYNOPSIS

    use Finance::Quote;

    $q = Finance::Quote->new;

    %fundinfo = $q->fetch("morningstar","fund name");

=head1 DESCRIPTION

This module obtains information about Fredrik fund prices from
www.morningstar.se.

=head1 FUND NAMES

Use some smart fund name...

=head1 LABELS RETURNED

Information available from Fredrik funds may include the following labels:
date method source name currency price. The prices are updated at the
end of each bank day.

=head1 SEE ALSO

Perhaps morningstar?

=cut
