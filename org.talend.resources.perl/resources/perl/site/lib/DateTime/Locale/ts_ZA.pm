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
# This file was generated from the source file ts_ZA.xml
# The source file version number was 1.13, generated on
# 2008/05/28 15:49:37.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::ts_ZA;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::ts';

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

DateTime::Locale::ts_ZA

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'ts_ZA' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Tsonga South Africa.

=head1 DATA

This locale inherits from the L<DateTime::Locale::ts> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Musumbhunuku
  Ravumbirhi
  Ravunharhu
  Ravumune
  Ravuntlhanu
  Mugqivela
  Sonto

=head3 Abbreviated (format)

  Mus
  Bir
  Har
  Ne
  Tlh
  Mug
  Son

=head3 Narrow (format)

  2
  3
  4
  5
  6
  7
  1

=head3 Wide (stand-alone)

  Musumbhunuku
  Ravumbirhi
  Ravunharhu
  Ravumune
  Ravuntlhanu
  Mugqivela
  Sonto

=head3 Abbreviated (stand-alone)

  Mus
  Bir
  Har
  Ne
  Tlh
  Mug
  Son

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

  Sunguti
  Nyenyenyani
  Nyenyankulu
  Dzivamisoko
  Mudyaxihi
  Khotavuxika
  Mawuwani
  Mhawuri
  Ndzhati
  Nhlangula
  Hukuri
  N'wendzamhala

=head3 Abbreviated (format)

  Sun
  Yan
  Kul
  Dzi
  Mud
  Kho
  Maw
  Mha
  Ndz
  Nhl
  Huk
  N'w

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

  Sunguti
  Nyenyenyani
  Nyenyankulu
  Dzivamisoko
  Mudyaxihi
  Khotavuxika
  Mawuwani
  Mhawuri
  Ndzhati
  Nhlangula
  Hukuri
  N'wendzamhala

=head3 Abbreviated (stand-alone)

  Sun
  Yan
  Kul
  Dzi
  Mud
  Kho
  Maw
  Mha
  Ndz
  Nhl
  Huk
  N'w

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

  Kotara yo sungula
  Kotara ya vumbirhi
  Kotara ya vunharhu
  Kotara ya vumune

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

  Kotara yo sungula
  Kotara ya vumbirhi
  Kotara ya vunharhu
  Kotara ya vumune

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

  BC
  AD

=head3 Abbreviated

  BC
  AD

=head3 Narrow

  BC
  AD

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = Ravumbirhi, 2008 Nyenyenyani 05
   1995-12-22T09:05:02 = Ravuntlhanu, 1995 N'wendzamhala 22
  -0010-09-15T04:44:23 = Mugqivela, -010 Ndzhati 15

=head3 Long

   2008-02-05T12:30:30 = 2008 Nyenyenyani 5
   1995-12-22T09:05:02 = 1995 N'wendzamhala 22
  -0010-09-15T04:44:23 = -010 Ndzhati 15

=head3 Medium

   2008-02-05T12:30:30 = 2008 Yan 5
   1995-12-22T09:05:02 = 1995 N'w 22
  -0010-09-15T04:44:23 = -010 Ndz 15

=head3 Short

   2008-02-05T12:30:30 = 8/02/05
   1995-12-22T09:05:02 = 95/12/22
  -0010-09-15T04:44:23 = 10/09/15

=head3 Default

   2008-02-05T12:30:30 = 2008 Yan 5
   1995-12-22T09:05:02 = 1995 N'w 22
  -0010-09-15T04:44:23 = -010 Ndz 15

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

   2008-02-05T12:30:30 = Ravumbirhi, 2008 Nyenyenyani 05 12:30:30 UTC
   1995-12-22T09:05:02 = Ravuntlhanu, 1995 N'wendzamhala 22 09:05:02 UTC
  -0010-09-15T04:44:23 = Mugqivela, -010 Ndzhati 15 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 2008 Nyenyenyani 5 12:30:30 UTC
   1995-12-22T09:05:02 = 1995 N'wendzamhala 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -010 Ndzhati 15 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 2008 Yan 5 12:30:30
   1995-12-22T09:05:02 = 1995 N'w 22 09:05:02
  -0010-09-15T04:44:23 = -010 Ndz 15 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 8/02/05 12:30
   1995-12-22T09:05:02 = 95/12/22 09:05
  -0010-09-15T04:44:23 = 10/09/15 04:44

=head3 Default

   2008-02-05T12:30:30 = 2008 Yan 5 12:30:30
   1995-12-22T09:05:02 = 1995 N'w 22 09:05:02
  -0010-09-15T04:44:23 = -010 Ndz 15 04:44:23

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

   2008-02-05T12:30:30 = Bir, 2-5
   1995-12-22T09:05:02 = Tlh, 12-22
  -0010-09-15T04:44:23 = Mug, 9-15

=head3 MMM (LLL)

   2008-02-05T12:30:30 = Yan
   1995-12-22T09:05:02 = N'w
  -0010-09-15T04:44:23 = Ndz

=head3 MMMEd (E MMM d)

   2008-02-05T12:30:30 = Bir Yan 5
   1995-12-22T09:05:02 = Tlh N'w 22
  -0010-09-15T04:44:23 = Mug Ndz 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T12:30:30 = Bir Nyenyenyani 5
   1995-12-22T09:05:02 = Tlh N'wendzamhala 22
  -0010-09-15T04:44:23 = Mug Ndzhati 15

=head3 MMMMd (MMMM d)

   2008-02-05T12:30:30 = Nyenyenyani 5
   1995-12-22T09:05:02 = N'wendzamhala 22
  -0010-09-15T04:44:23 = Ndzhati 15

=head3 MMMd (MMM d)

   2008-02-05T12:30:30 = Yan 5
   1995-12-22T09:05:02 = N'w 22
  -0010-09-15T04:44:23 = Ndz 15

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

   2008-02-05T12:30:30 = Bir, 2008-2-5
   1995-12-22T09:05:02 = Tlh, 1995-12-22
  -0010-09-15T04:44:23 = Mug, -010-9-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 Yan
   1995-12-22T09:05:02 = 1995 N'w
  -0010-09-15T04:44:23 = -010 Ndz

=head3 yMMMEd (EEE, yyyy MMM d)

   2008-02-05T12:30:30 = Bir, 2008 Yan 5
   1995-12-22T09:05:02 = Tlh, 1995 N'w 22
  -0010-09-15T04:44:23 = Mug, -010 Ndz 15

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 Nyenyenyani
   1995-12-22T09:05:02 = 1995 N'wendzamhala
  -0010-09-15T04:44:23 = -010 Ndzhati

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 K1
   1995-12-22T09:05:02 = 1995 K4
  -0010-09-15T04:44:23 = -010 K3

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

Musumbhunuku


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
