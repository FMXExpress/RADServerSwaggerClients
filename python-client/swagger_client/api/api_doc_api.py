# coding: utf-8

"""
    EMS API Documentation

    Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps  # noqa: E501

    OpenAPI spec version: 0.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class ApiDocApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def a_pi(self, **kwargs):  # noqa: E501
        """Get API EndPoints  # noqa: E501

         |      Used to retrieve all the API EndPoints.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.a_pi(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.a_pi_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.a_pi_with_http_info(**kwargs)  # noqa: E501
            return data

    def a_pi_with_http_info(self, **kwargs):  # noqa: E501
        """Get API EndPoints  # noqa: E501

         |      Used to retrieve all the API EndPoints.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.a_pi_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method a_pi" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/api', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_apijson_format(self, **kwargs):  # noqa: E501
        """Get JSON  # noqa: E501

        Get API in JSON format  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_apijson_format(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_apijson_format_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.get_apijson_format_with_http_info(**kwargs)  # noqa: E501
            return data

    def get_apijson_format_with_http_info(self, **kwargs):  # noqa: E501
        """Get JSON  # noqa: E501

        Get API in JSON format  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_apijson_format_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_apijson_format" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/api/apidoc.json', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_apiyaml_format(self, **kwargs):  # noqa: E501
        """Get YAML  # noqa: E501

        Get API in YAML format  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_apiyaml_format(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_apiyaml_format_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.get_apiyaml_format_with_http_info(**kwargs)  # noqa: E501
            return data

    def get_apiyaml_format_with_http_info(self, **kwargs):  # noqa: E501
        """Get YAML  # noqa: E501

        Get API in YAML format  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_apiyaml_format_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_apiyaml_format" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/api/apidoc.yaml', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_apiyaml_format_end_point(self, item, **kwargs):  # noqa: E501
        """Get API EndPoint  # noqa: E501

         |      Used to retrieve an EndPoint for the API EndPoints.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_apiyaml_format_end_point(item, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: Path Segment to an EndPoint (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_apiyaml_format_end_point_with_http_info(item, **kwargs)  # noqa: E501
        else:
            (data) = self.get_apiyaml_format_end_point_with_http_info(item, **kwargs)  # noqa: E501
            return data

    def get_apiyaml_format_end_point_with_http_info(self, item, **kwargs):  # noqa: E501
        """Get API EndPoint  # noqa: E501

         |      Used to retrieve an EndPoint for the API EndPoints.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_apiyaml_format_end_point_with_http_info(item, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str item: Path Segment to an EndPoint (required)
        :param str x_embarcadero_application_id:
        :param str x_embarcadero_app_secret:
        :param str x_embarcadero_master_secret:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['item', 'x_embarcadero_application_id', 'x_embarcadero_app_secret', 'x_embarcadero_master_secret']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_apiyaml_format_end_point" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'item' is set
        if ('item' not in params or
                params['item'] is None):
            raise ValueError("Missing the required parameter `item` when calling `get_apiyaml_format_end_point`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'item' in params:
            path_params['item'] = params['item']  # noqa: E501

        query_params = []

        header_params = {}
        if 'x_embarcadero_application_id' in params:
            header_params['X-Embarcadero-Application-Id'] = params['x_embarcadero_application_id']  # noqa: E501
        if 'x_embarcadero_app_secret' in params:
            header_params['X-Embarcadero-App-Secret'] = params['x_embarcadero_app_secret']  # noqa: E501
        if 'x_embarcadero_master_secret' in params:
            header_params['X-Embarcadero-Master-Secret'] = params['x_embarcadero_master_secret']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/api/{item}/apidoc.yaml', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)