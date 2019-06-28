=begin comment

EMS API Documentation

Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::PushApi');

my $api = WWW::SwaggerClient::PushApi->new();
isa_ok($api, 'WWW::SwaggerClient::PushApi');

#
# send test
#
{
    my $body = undef; # replace NULL with a proper value
    my $x_embarcadero_application_id = undef; # replace NULL with a proper value
    my $x_embarcadero_app_secret = undef; # replace NULL with a proper value
    my $x_embarcadero_master_secret = undef; # replace NULL with a proper value
    my $result = $api->send(body => $body, x_embarcadero_application_id => $x_embarcadero_application_id, x_embarcadero_app_secret => $x_embarcadero_app_secret, x_embarcadero_master_secret => $x_embarcadero_master_secret);
}


1;