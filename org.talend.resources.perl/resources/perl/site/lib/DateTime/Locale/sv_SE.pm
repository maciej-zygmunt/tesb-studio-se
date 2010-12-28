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
# This file was generated from the source file sv_SE.xml
# The source file version number was 1.51, generated on
# 2008/05/28 15:49:36.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::sv_SE;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::sv';

sub cldr_version { return "1\.6\.1" }

{
    my $first_day_of_week = 1;
    sub first_day_of_week { return $first_day_of_week }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::sv_SE

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'sv_SE' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Swedish Sweden.

=head1 DATA

This locale inherits from the L<DateTime::Locale::sv> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  måndag
  tisdag
  onsdag
  torsdag
  fredag
  lördag
  söndag

=head3 Abbreviated (format)

  mån
  tis
  ons
  tors
  fre
  lör
  sön

=head3 Narrow (format)

  M
  T
  O
  T
  F
  L
  S

=head3 Wide (stand-alone)

  måndag
  tisdag
  onsdag
  torsdag
  fredag
  lördag
  söndag

=head3 Abbreviated (stand-alone)

  mån
  tis
  ons
  tors
  fre
  lör
  sön

=head3 Narrow (stand-alone)

  M
  T
  O
  T
  F
  L
  S

=head2 Months

=head3 Wide (format)

  januari
  februari
  mars
  april
  maj
  juni
  juli
  augusti
  september
  oktober
  november
  december

=head3 Abbreviated (format)

  jan
  feb
  mar
  apr
  maj
  jun
  jul
  aug
  sep
  okt
  nov
  dec

=head3 Narrow (format)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  januari
  februari
  mars
  april
  maj
  juni
  juli
  augusti
  september
  oktober
  november
  december

=head3 Abbreviated (stand-alone)

  jan
  feb
  mar
  apr
  maj
  jun
  jul
  aug
  sep
  okt
  nov
  dec

=head3 Narrow (stand-alone)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  1:a kvartalet
  2:a kvartalet
  3:e kvartalet
  4:e kvartalet

=head3 Abbreviated (format)

  K1
  K2
  K3
  K4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1:a kvartalet
  2:a kvartalet
  3:e kvartalet
  4:e kvartalet

=head3 Abbreviated (stand-alone)

  K1
  K2
  K3
  K4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  före Kristus
  efter Kristus

=head3 Abbreviated

  f.Kr.
  e.Kr.

=head3 Narrow

  f.Kr.
  e.Kr.

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = tisdag den 5 februari 2008
   1995-12-22T09:05:02 = fredag den 22 december 1995
  -0010-09-15T04:44:23 = lördag den 15 september -010

=head3 Long

   2008-02-05T12:30:30 = 5 februari 2008
   1995-12-22T09:05:02 = 22 december 1995
  -0010-09-15T04:44:23 = 15 september -010

=head3 Medium

   2008-02-05T12:30:30 = 5 feb 2008
   1995-12-22T09:05:02 = 22 dec 1995
  -0010-09-15T04:44:23 = 15 sep -010

=head3 Short

   2008-02-05T12:30:30 = 2008-02-05
   1995-12-22T09:05:02 = 1995-12-22
  -0010-09-15T04:44:23 = -010-09-15

=head3 Default

   2008-02-05T12:30:30 = 5 feb 2008
   1995-12-22T09:05:02 = 22 dec 1995
  -0010-09-15T04:44:23 = 15 sep -010

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = kl. 12.30.30 UTC
   1995-12-22T09:05:02 = kl. 09.05.02 UTC
  -0010-09-15T04:44:23 = kl. 04.44.23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12.30.30 UTC
   1995-12-22T09:05:02 = 09.05.02 UTC
  -0010-09-15T04:44:23 = 04.44.23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head3 Short

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 09.05
  -0010-09-15T04:44:23 = 04.44

=head3 Default

   2008-02-05T12:30:30 = 12.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = tisdag den 5 februari 2008 kl. 12.30.30 UTC
   1995-12-22T09:05:02 = fredag den 22 december 1995 kl. 09.05.02 UTC
  -0010-09-15T04:44:23 = lördag den 15 september -010 kl. 04.44.23 UTC

=head3 Long

   2008-02-05T12:30:30 = 5 februari 2008 12.30.30 UTC
   1995-12-22T09:05:02 = 22 december 1995 09.05.02 UTC
  -0010-09-15T04:44:23 = 15 september -010 04.44.23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 5 feb 2008 12.30.30
   1995-12-22T09:05:02 = 22 dec 1995 09.05.02
  -0010-09-15T04:44:23 = 15 sep -010 04.44.23

=head3 Short

   2008-02-05T12:30:30 = 2008-02-05 12.30
   1995-12-22T09:05:02 = 1995-12-22 09.05
  -0010-09-15T04:44:23 = -010-09-15 04.44

=head3 Default

   2008-02-05T12:30:30 = 5 feb 2008 12.30.30
   1995-12-22T09:05:02 = 22 dec 1995 09.05.02
  -0010-09-15T04:44:23 = 15 sep -010 04.44.23

=head2 Available Formats

=head3 HHmm (HH.mm)

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 09.05
  -0010-09-15T04:44:23 = 04.44

=head3 HHmmss (HH.mm.ss)

   2008-02-05T12:30:30 = 12.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head3 Hm (H.mm)

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 9.05
  -0010-09-15T04:44:23 = 4.44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E d/M)

   2008-02-05T12:30:30 = tis 5/2
   1995-12-22T09:05:02 = fre 22/12
  -0010-09-15T04:44:23 = lör 15/9

=head3 MMM (LLL)

   2008-02-05T12:30:30 = feb
   1995-12-22T09:05:02 = dec
  -0010-09-15T04:44:23 = sep

=head3 MMMEd (E d MMM)

   2008-02-05T12:30:30 = tis 5 feb
   1995-12-22T09:05:02 = fre 22 dec
  -0010-09-15T04:44:23 = lör 15 sep

=head3 MMMMEEEd (EEE d MMMM)

   2008-02-05T12:30:30 = tis 5 februari
   1995-12-22T09:05:02 = fre 22 december
  -0010-09-15T04:44:23 = lör 15 september

=head3 MMMMEd (E d MMMM)

   2008-02-05T12:30:30 = tis 5 februari
   1995-12-22T09:05:02 = fre 22 december
  -0010-09-15T04:44:23 = lör 15 september

=head3 MMMMd (d MMMM)

   2008-02-05T12:30:30 = 5 februari
   1995-12-22T09:05:02 = 22 december
  -0010-09-15T04:44:23 = 15 september

=head3 MMMd (d MMM)

   2008-02-05T12:30:30 = 5 feb
   1995-12-22T09:05:02 = 22 dec
  -0010-09-15T04:44:23 = 15 sep

=head3 MMd (d/M)

   2008-02-05T12:30:30 = 5/2
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/9

=head3 MMdd (dd/MM)

   2008-02-05T12:30:30 = 05/02
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/09

=head3 Md (d/M)

   2008-02-05T12:30:30 = 5/2
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/9

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 hhmm (hh.mm)

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 09.05
  -0010-09-15T04:44:23 = 04.44

=head3 hhmmss (HH:mm:ss)

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 mmss (mm.ss)

   2008-02-05T12:30:30 = 30.30
   1995-12-22T09:05:02 = 05.02
  -0010-09-15T04:44:23 = 44.23

=head3 ms (mm.ss)

   2008-02-05T12:30:30 = 30.30
   1995-12-22T09:05:02 = 05.02
  -0010-09-15T04:44:23 = 44.23

=head3 y (yyyy)

   2008-02-05T12:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -010

=head3 yM (yyyy-MM)

   2008-02-05T12:30:30 = 2008-02
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-09

=head3 yMEd (EEE, yyyy-MM-dd)

   2008-02-05T12:30:30 = tis, 2008-02-05
   1995-12-22T09:05:02 = fre, 1995-12-22
  -0010-09-15T04:44:23 = lör, -010-09-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 feb
   1995-12-22T09:05:02 = 1995 dec
  -0010-09-15T04:44:23 = -010 sep

=head3 yMMMEd (EEE d MMM yyyy)

   2008-02-05T12:30:30 = tis 5 feb 2008
   1995-12-22T09:05:02 = fre 22 dec 1995
  -0010-09-15T04:44:23 = lör 15 sep -010

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 februari
   1995-12-22T09:05:02 = 1995 december
  -0010-09-15T04:44:23 = -010 september

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 K1
   1995-12-22T09:05:02 = 1995 K4
  -0010-09-15T04:44:23 = -010 K3

=head3 yyMM (yy-MM)

   2008-02-05T12:30:30 = 8-02
   1995-12-22T09:05:02 = 95-12
  -0010-09-15T04:44:23 = 10-09

=head3 yyMMM (MMM -yy)

   2008-02-05T12:30:30 = feb -8
   1995-12-22T09:05:02 = dec -95
  -0010-09-15T04:44:23 = sep -10

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyyMM (yyyy-MM)

   2008-02-05T12:30:30 = 2008-02
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-09

=head3 yyyyMMM (MMM yyyy)

   2008-02-05T12:30:30 = feb 2008
   1995-12-22T09:05:02 = dec 1995
  -0010-09-15T04:44:23 = sep -010

=head3 yyyyQQQQ (QQQQ yyyy)

   2008-02-05T12:30:30 = 1:a kvartalet 2008
   1995-12-22T09:05:02 = 4:e kvartalet 1995
  -0010-09-15T04:44:23 = 3:e kvartalet -010

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

måndag


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
