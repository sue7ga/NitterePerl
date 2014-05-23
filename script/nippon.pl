use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::Nittere::API;


my $nittere = WWW::Nittere::API->new(apikey =>'zbm57ygyvg78mxbkSEEOJpRkLNQvBhadRmeuuw3KFv5vTAmWXujaQS4ktbtu');

print $nittere->request('NEWS');

