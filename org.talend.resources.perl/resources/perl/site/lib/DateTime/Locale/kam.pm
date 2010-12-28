###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file kam.xml
# The source file version number was 1.22, generated on
# 2008/05/28 15:49:33.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::kam;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.6\.1" }

{
    my $am_pm_abbreviated = [ "AM", "PM" ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ yyyy\ MMMM\ dd";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "yyyy\ MMMM\ d";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "yyyy\ MMM\ d";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "yy\/MM\/dd";
    sub date_format_short { return $date_format_short }
}

{
    my $datetime_format = "\{1\}\ \{0\}";
    sub datetime_format { return $datetime_format }
}

{
    my $day_format_abbreviated = [ "Jtt", "Jnn", "Jtn", "Alh", "Ijm", "Jms", "Jpl" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "Jumatatu", "Jumanne", "Jumatano", "Alamisi", "Ijumaa", "Jumamosi", "Jumapili" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "2", "3", "4", "5", "6", "7", "1" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "MY", "IY" ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $era_wide = [ "mbee\ wa\ yesu", "IY" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = 1;
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "Mwei\ wa\ mbee", "Mwei\ wa\ keli", "Mwei\ wa\ katatu", "Mwei\ wa\ kanne", "Mwei\ wa\ katano", "Mwei\ wa\ thanthatu", "Mwei\ wa\ muonza", "Mwei\ wa\ nyanya", "Mwei\ wa\ kenda", "Mwei\ wa\ ikumi", "Mwei\ wa\ ikumi\ na\ imwe", "Mwei\ wa\ ikumi\ na\ ili" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "Mwei\ wa\ mbee", "Mwei\ wa\ keli", "Mwei\ wa\ katatu", "Mwei\ wa\ kanne", "Mwei\ wa\ katano", "Mwei\ wa\ thanthatu", "Mwei\ wa\ muonza", "Mwei\ wa\ nyanya", "Mwei\ wa\ kenda", "Mwei\ wa\ ikumi", "Mwei\ wa\ ikumi\ na\ imwe", "Mwei\ wa\ ikumi\ na\ ili" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}
{
    my $quarter_format_wide = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }


sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "HH\:mm\:ss\ v";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "HH\:mm\:ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "HH\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "HH\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_available_formats =
        {
          "yyQ" => "Q\ yy"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::kam

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'kam' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Kamba.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Jumatatu
  Jumanne
  Jumatano
  Alamisi
  Ijumaa
  Jumamosi
  Jumapili

=head3 Abbreviated (format)

  Jtt
  Jnn
  Jtn
  Alh
  Ijm
  Jms
  Jpl

=head3 Narrow (format)

  2
  3
  4
  5
  6
  7
  1

=head3 Wide (stand-alone)

  Jumatatu
  Jumanne
  Jumatano
  Alamisi
  Ijumaa
  Jumamosi
  Jumapili

=head3 Abbreviated (stand-alone)

  Jtt
  Jnn
  Jtn
  Alh
  Ijm
  Jms
  Jpl

=head3 Narrow (stand-alone)

  2
  3
  4
  5
  6
  7
  1

=head2 Months

=head3 Wide (format)

  Mwei wa mbee
  Mwei wa keli
  Mwei wa katatu
  Mwei wa kanne
  Mwei wa katano
  Mwei wa thanthatu
  Mwei wa muonza
  Mwei wa nyanya
  Mwei wa kenda
  Mwei wa ikumi
  Mwei wa ikumi na imwe
  Mwei wa ikumi na ili

=head3 Abbreviated (format)

  Mwei wa mbee
  Mwei wa keli
  Mwei wa katatu
  Mwei wa kanne
  Mwei wa katano
  Mwei wa thanthatu
  Mwei wa muonza
  Mwei wa nyanya
  Mwei wa kenda
  Mwei wa ikumi
  Mwei wa ikumi na imwe
  Mwei wa ikumi na ili

=head3 Narrow (format)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head3 Wide (stand-alone)

  Mwei wa mbee
  Mwei wa keli
  Mwei wa katatu
  Mwei wa kanne
  Mwei wa katano
  Mwei wa thanthatu
  Mwei wa muonza
  Mwei wa nyanya
  Mwei wa kenda
  Mwei wa ikumi
  Mwei wa ikumi na imwe
  Mwei wa ikumi na ili

=head3 Abbreviated (stand-alone)

  Mwei wa mbee
  Mwei wa keli
  Mwei wa katatu
  Mwei wa kanne
  Mwei wa katano
  Mwei wa thanthatu
  Mwei wa muonza
  Mwei wa nyanya
  Mwei wa kenda
  Mwei wa ikumi
  Mwei wa ikumi na imwe
  Mwei wa ikumi na ili

=head3 Narrow (stand-alone)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  mbee wa yesu
  IY

=head3 Abbreviated

  MY
  IY

=head3 Narrow

  MY
  IY

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = Jumanne, 2008 Mwei wa keli 05
   1995-12-22T09:05:02 = Ijumaa, 1995 Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = Jumamosi, -010 Mwei wa kenda 15

=head3 Long

   2008-02-05T12:30:30 = 2008 Mwei wa keli 5
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = -010 Mwei wa kenda 15

=head3 Medium

   2008-02-05T12:30:30 = 2008 Mwei wa keli 5
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = -010 Mwei wa kenda 15

=head3 Short

   2008-02-05T12:30:30 = 8/02/05
   1995-12-22T09:05:02 = 95/12/22
  -0010-09-15T04:44:23 = 10/09/15

=head3 Default

   2008-02-05T12:30:30 = 2008 Mwei wa keli 5
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = -010 Mwei wa kenda 15

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = Jumanne, 2008 Mwei wa keli 05 12:30:30 UTC
   1995-12-22T09:05:02 = Ijumaa, 1995 Mwei wa ikumi na ili 22 09:05:02 UTC
  -0010-09-15T04:44:23 = Jumamosi, -010 Mwei wa kenda 15 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 2008 Mwei wa keli 5 12:30:30 UTC
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -010 Mwei wa kenda 15 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 2008 Mwei wa keli 5 12:30:30
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili 22 09:05:02
  -0010-09-15T04:44:23 = -010 Mwei wa kenda 15 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 8/02/05 12:30
   1995-12-22T09:05:02 = 95/12/22 09:05
  -0010-09-15T04:44:23 = 10/09/15 04:44

=head3 Default

   2008-02-05T12:30:30 = 2008 Mwei wa keli 5 12:30:30
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili 22 09:05:02
  -0010-09-15T04:44:23 = -010 Mwei wa kenda 15 04:44:23

=head2 Available Formats

=head3 Hm (H:mm)

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, M-d)

   2008-02-05T12:30:30 = Jnn, 2-5
   1995-12-22T09:05:02 = Ijm, 12-22
  -0010-09-15T04:44:23 = Jms, 9-15

=head3 MMM (LLL)

   2008-02-05T12:30:30 = Mwei wa keli
   1995-12-22T09:05:02 = Mwei wa ikumi na ili
  -0010-09-15T04:44:23 = Mwei wa kenda

=head3 MMMEd (E MMM d)

   2008-02-05T12:30:30 = Jnn Mwei wa keli 5
   1995-12-22T09:05:02 = Ijm Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = Jms Mwei wa kenda 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T12:30:30 = Jnn Mwei wa keli 5
   1995-12-22T09:05:02 = Ijm Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = Jms Mwei wa kenda 15

=head3 MMMMd (MMMM d)

   2008-02-05T12:30:30 = Mwei wa keli 5
   1995-12-22T09:05:02 = Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = Mwei wa kenda 15

=head3 MMMd (MMM d)

   2008-02-05T12:30:30 = Mwei wa keli 5
   1995-12-22T09:05:02 = Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = Mwei wa kenda 15

=head3 Md (M-d)

   2008-02-05T12:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 ms (mm:ss)

   2008-02-05T12:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (yyyy)

   2008-02-05T12:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -010

=head3 yM (yyyy-M)

   2008-02-05T12:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (EEE, yyyy-M-d)

   2008-02-05T12:30:30 = Jnn, 2008-2-5
   1995-12-22T09:05:02 = Ijm, 1995-12-22
  -0010-09-15T04:44:23 = Jms, -010-9-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 Mwei wa keli
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili
  -0010-09-15T04:44:23 = -010 Mwei wa kenda

=head3 yMMMEd (EEE, yyyy MMM d)

   2008-02-05T12:30:30 = Jnn, 2008 Mwei wa keli 5
   1995-12-22T09:05:02 = Ijm, 1995 Mwei wa ikumi na ili 22
  -0010-09-15T04:44:23 = Jms, -010 Mwei wa kenda 15

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 Mwei wa keli
   1995-12-22T09:05:02 = 1995 Mwei wa ikumi na ili
  -0010-09-15T04:44:23 = -010 Mwei wa kenda

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -010 Q3

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

Jumatatu


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
