# coding: utf-8

"""
    EMS API Documentation

    Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps  # noqa: E501

    OpenAPI spec version: 0.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import unittest

import swagger_client
from swagger_client.api.push_api import PushApi  # noqa: E501
from swagger_client.rest import ApiException


class TestPushApi(unittest.TestCase):
    """PushApi unit test stubs"""

    def setUp(self):
        self.api = swagger_client.api.push_api.PushApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_send(self):
        """Test case for send

        Send Push  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
