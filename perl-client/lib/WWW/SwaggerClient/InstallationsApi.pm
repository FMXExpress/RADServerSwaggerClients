=begin comment

EMS API Documentation

Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::InstallationsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::SwaggerClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::SwaggerClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# add_installation
#
# Add Installation
# 
# @param InstallationAddObject $body Object to sign up a new EMS User in the EMS Server (required)
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
{
    my $params = {
    'body' => {
        data_type => 'InstallationAddObject',
        description => 'Object to sign up a new EMS User in the EMS Server',
        required => '1',
    },
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_installation' } = { 
    	summary => 'Add Installation',
        params => $params,
        returns => 'InstallationAddedObject',
        };
}
# @return InstallationAddedObject
#
sub add_installation {
    my ($self, %args) = @_;

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling add_installation");
    }

    # parse inputs
    my $_resource_path = '/installations';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InstallationAddedObject', $response);
    return $_response_object;
}

#
# delete_installation
#
# Delete Installation
# 
# @param string $id A Installation ID (required)
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'A Installation ID',
        required => '1',
    },
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_installation' } = { 
    	summary => 'Delete Installation',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_installation {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_installation");
    }

    # parse inputs
    my $_resource_path = '/installations/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_channels
#
# Get Installation Channels
# 
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
{
    my $params = {
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_channels' } = { 
    	summary => 'Get Installation Channels',
        params => $params,
        returns => 'ARRAY[ChannelName]',
        };
}
# @return ARRAY[ChannelName]
#
sub get_channels {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/installations/channels';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ChannelName]', $response);
    return $_response_object;
}

#
# get_installation
#
# Get Installation
# 
# @param string $id A Installation ID (required)
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'A Installation ID',
        required => '1',
    },
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_installation' } = { 
    	summary => 'Get Installation',
        params => $params,
        returns => 'InstallationObject',
        };
}
# @return InstallationObject
#
sub get_installation {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_installation");
    }

    # parse inputs
    my $_resource_path = '/installations/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InstallationObject', $response);
    return $_response_object;
}

#
# get_installation_fields
#
# Get Fields
# 
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
{
    my $params = {
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_installation_fields' } = { 
    	summary => 'Get Fields',
        params => $params,
        returns => 'ARRAY[FieldInstallationObject]',
        };
}
# @return ARRAY[FieldInstallationObject]
#
sub get_installation_fields {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/installations/fields';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[FieldInstallationObject]', $response);
    return $_response_object;
}

#
# get_installations
#
# Get Installations
# 
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
# @param Number $skip users skipped (optional)
# @param Number $limit maximum number of results to return (optional)
# @param Number $order order ascending or descending (asc, desc) (optional)
# @param string $where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
{
    my $params = {
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'skip' => {
        data_type => 'Number',
        description => 'users skipped',
        required => '0',
    },
    'limit' => {
        data_type => 'Number',
        description => 'maximum number of results to return',
        required => '0',
    },
    'order' => {
        data_type => 'Number',
        description => 'order ascending or descending (asc, desc)',
        required => '0',
    },
    'where' => {
        data_type => 'string',
        description => 'filter operators (lt, lte, gt, gte, eq, neq, like, nlike)',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_installations' } = { 
    	summary => 'Get Installations',
        params => $params,
        returns => 'ARRAY[InstallationObject]',
        };
}
# @return ARRAY[InstallationObject]
#
sub get_installations {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/installations';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'skip'}) {
        $query_params->{'skip'} = $self->{api_client}->to_query_value($args{'skip'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'order'}) {
        $query_params->{'order'} = $self->{api_client}->to_query_value($args{'order'});
    }

    # query params
    if ( exists $args{'where'}) {
        $query_params->{'where'} = $self->{api_client}->to_query_value($args{'where'});
    }

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InstallationObject]', $response);
    return $_response_object;
}

#
# update_installation
#
# Update Installation
# 
# @param string $id A Installation ID (required)
# @param UpdateInstallationObject $body Installation fields to update (required)
# @param string $x_embarcadero_application_id  (optional)
# @param string $x_embarcadero_app_secret  (optional)
# @param string $x_embarcadero_master_secret  (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'A Installation ID',
        required => '1',
    },
    'body' => {
        data_type => 'UpdateInstallationObject',
        description => 'Installation fields to update',
        required => '1',
    },
    'x_embarcadero_application_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_app_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'x_embarcadero_master_secret' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_installation' } = { 
    	summary => 'Update Installation',
        params => $params,
        returns => 'UpdatedInstallationObject',
        };
}
# @return UpdatedInstallationObject
#
sub update_installation {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_installation");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling update_installation");
    }

    # parse inputs
    my $_resource_path = '/installations/{id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'x_embarcadero_application_id'}) {
        $header_params->{'X-Embarcadero-Application-Id'} = $self->{api_client}->to_header_value($args{'x_embarcadero_application_id'});
    }

    # header params
    if ( exists $args{'x_embarcadero_app_secret'}) {
        $header_params->{'X-Embarcadero-App-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_app_secret'});
    }

    # header params
    if ( exists $args{'x_embarcadero_master_secret'}) {
        $header_params->{'X-Embarcadero-Master-Secret'} = $self->{api_client}->to_header_value($args{'x_embarcadero_master_secret'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UpdatedInstallationObject', $response);
    return $_response_object;
}

1;
