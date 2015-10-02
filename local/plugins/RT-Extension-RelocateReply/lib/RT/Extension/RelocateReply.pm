use strict;
use warnings;

package RT::Extension::RelocateReply;

our $VERSION = '1.00';

'RT::Queue'->AddRight( Admin => RelocateReply => "Relocate comments or correspondances of a ticket");

=head1 NAME

RT::Extension::RelocateReply - relocate missplaced messages to the right ticket

=head1 DESCRIPTION

This extension for RT gives the ability to those who have the 
C<RelocateReply> right to relocate / move messages (comments or 
correspondences) from one ticket to another. The relocation action
appears in both ticket's history width the current date. There will be
message at the original place stating the transaction transition.

=head1 RT VERSION

Works with RT 4.2.

=head1 INSTALLATION

There is no installer for the extension yet.

=over

=item Extract all the files to your local plugins directory. 

eg.: C</usr/local/share/request-tracker4/plugins/>

=item Create the RT-Extension-RelocateReply directory in your local
Callbacks directory.

eg.: C</usr/local/share/request-tracker4/html/Callbacks/RT-Extension-RelocateReply/>

=item Move the entire Elements directory from the extacted files under
the created directory.

The 
C</usr/local/share/request-tracker4/html/Callbacks/RT-Extension-RelocateReply/Elements/ShowTransaction/Default>
file should appear.

=item Add the extension to your siteconfig.

If you installed RT from package copy the 
C<etc#RT_SiteConfig.d/60-RelocateReply> file to 
C</etc/request-tracker4/RT_SiteConfig.d/> and run 
C<update-rt-siteconfig-4>

If you run RT from source add a

    Plugin('RT::Extension::RelocateReply');

line to C<RT_SiteConfig.pm>.

=item Restart your webserver

=back

=head1 AUTHOR

Attila Kadar, Mithrandir Ltd. E<lt>attila.kadar@mithrandir.huE<gt>

=head1 BUGS

All bugs should be reported to the above address.

=head1 LICENSE

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;

