package String::Work;
use 5.008008;
use strict;
our $VERSION = '1.00';

sub new {
  my $proto = shift;
  my $class = ref($proto) || $proto;
  my $self  = {};
  $self->{UPPER} = [];
  $self->{LOWER} = [];
  $self->{CLEAN_FIRST} = [];
  $self->{CLEAN_LAST} = [];
  bless($self, $class);
  return $self;
}


# Transfer into the upper register
sub upper {
   my $self = shift;
   if (@_) { @{ $self->{UPPER} } = @_ }
   my $action = $self->{UPPER}->[0];

   $action =~ tr/[a-z]/[A-Z]/;

return $action;
}


# Transfer into the lower register
sub lower {
   my $self = shift;
   if (@_) { @{ $self->{LOWER} } = @_ }
   my $action = $self->{LOWER}->[0];

   $action =~ tr/[A-Z]/[a-z]/;

return $action;
}


# To clean the first bleaching symbols
sub clean_first {
   my $self = shift;
   if (@_) { @{ $self->{CLEAN_FIRST} } = @_ }
   my $action = $self->{CLEAN_FIRST}->[0];

   $action =~ s/^\s+//;

return $action;
}


# To clean the last bleaching symbols
sub clean_last {
   my $self = shift;
   if (@_) { @{ $self->{CLEAN_LAST} } = @_ }
   my $action = $self->{CLEAN_LAST}->[0];

   $action =~ s/\s+$//;

return $action;
}


1;
__END__

=head1 NAME

String::Work - Module of work with the string

=head1 SYNOPSIS

   #!/usr/bin/perl
   use String::Work;
   my $string = String::Work->new();

   #Transfer into the upper register
   print $string->upper('upper');

   # Transfer into the lower register
   print $string->lower('LOWER');

   # To clean the first bleaching symbols
   print $string->clean_first('   CLEAN');

   # To clean the last bleaching symbols
   print $string->clean_last('CLEAN    ');


=head1 SEE ALSO

For the survey of Russian documentation you will visit our site L<http://www.web-list.org/>

=head1 AUTHOR

Kostya Ten E<lt>kostya@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2006 Kostya Ten E<lt>kostya@cpan.orgE<gt>

=cut
