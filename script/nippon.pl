use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::Nittere::API;
use Data::Dumper;


my $nittere = WWW::Nittere::API->new(apikey =>'zbm57ygyvg78mxbkSEEOJpRkLNQvBhadRmeuuw3KFv5vTAmWXujaQS4ktbtu');

print Dumper $nittere->request('NEWS');

