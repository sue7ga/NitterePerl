package WWW::Nittere::API;
use 5.008005;
use strict;
use warnings;
use utf8;
use URI;

use LWP::Simple;
use XML::Simple;
use XML::LibXML;
use XML::LibXML::XPathContext;

our $VERSION = "0.01";

use constant URL => "http://appli.ntv.co.jp/ntv_WebAPI/program/";

sub new{
 my($class,%opt) = @_;
 my $self = {
  apikey => $opt{apikey},
 };
 bless $self,$class;
 return $self;
}

sub apikey{
 my $self = shift;
 return $self->{apikey}
}

sub url{
  my $self = shift;
  my $url = URL."?key=".$self->{apikey};
  return $url;
}

sub request{
  my ($self,$title) = @_;
  my $requrl = $self->url."&title=$title";
  my $response = LWP::Simple::get($requrl);
  my $parser = XML::Simple->new;
  my $data = $parser->XMLin($response);
  return $data;
}


1;
__END__

=encoding utf-8

=head1 NAME

WWW::Nittere::API - It's new $module

=head1 SYNOPSIS

    use WWW::Nittere::API;

=head1 DESCRIPTION

WWW::Nittere::API is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

