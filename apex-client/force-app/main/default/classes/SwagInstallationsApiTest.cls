@isTest
private class SwagInstallationsApiTest {
    /**
     * Add Installation
     *
     *  |\r\n    Used to add a new &#x60;Installation&#x60; object to the EMS database.
     */
    @isTest
    private static void addInstallationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagInstallationAddObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagInstallationsApi api;
        SwagInstallationAddedObject response;
        SwagInstallationAddedObject expectedResponse;

        api = new SwagInstallationsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_id" : "_id"\n}');
        expectedResponse = SwagInstallationAddedObject.getExample();
        response = (SwagInstallationAddedObject) api.addInstallation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete Installation
     *
     *  |\r\n    Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     */
    @isTest
    private static void deleteInstallationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'id_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagInstallationsApi api;

        api = new SwagInstallationsApi(new SwagClient());

        api.deleteInstallation(params);
    }

    /**
     * Get Installation Channels
     *
     *  |\r\n     Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     */
    @isTest
    private static void getChannelsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagInstallationsApi api;
        List<String> response;
        List<String> expectedResponse;

        api = new SwagInstallationsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ { }, { } ]');
        expectedResponse = new List<String>{String.getExample()};
        response = (List<String>) api.getChannels(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Installation
     *
     *  |\r\n    Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     */
    @isTest
    private static void getInstallationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'id_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagInstallationsApi api;
        SwagInstallationObject response;
        SwagInstallationObject expectedResponse;

        api = new SwagInstallationsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "deviceType" : "ios",\n  "channels" : [ "channels", "channels" ],\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "_id" : "_id",\n  "deviceToken" : "deviceToken"\n}');
        expectedResponse = SwagInstallationObject.getExample();
        response = (SwagInstallationObject) api.getInstallation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Fields
     *
     *  |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).
     */
    @isTest
    private static void getInstallationFieldsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagInstallationsApi api;
        List<SwagFieldInstallationObject> response;
        List<SwagFieldInstallationObject> expectedResponse;

        api = new SwagInstallationsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n}, {\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n} ]');
        expectedResponse = new List<SwagFieldInstallationObject>{SwagFieldInstallationObject.getExample()};
        response = (List<SwagFieldInstallationObject>) api.getInstallationFields(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Installations
     *
     *  |\r\n    Used to retrieve all data from &#x60;Installation&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.
     */
    @isTest
    private static void getInstallationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example',
            'skip' => 8.14,
            'r_limit' => 8.14,
            'order' => 8.14,
            'r_where' => 'r_where_example'
        };

        SwagClient client;
        SwagInstallationsApi api;
        List<SwagInstallationObject> response;
        List<SwagInstallationObject> expectedResponse;

        api = new SwagInstallationsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "deviceType" : "ios",\n  "channels" : [ "channels", "channels" ],\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "_id" : "_id",\n  "deviceToken" : "deviceToken"\n}, {\n  "deviceType" : "ios",\n  "channels" : [ "channels", "channels" ],\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "_id" : "_id",\n  "deviceToken" : "deviceToken"\n} ]');
        expectedResponse = new List<SwagInstallationObject>{SwagInstallationObject.getExample()};
        response = (List<SwagInstallationObject>) api.getInstallations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Installation
     *
     *  |\r\n    Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     */
    @isTest
    private static void updateInstallationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'id_example',
            'body' => SwagUpdateInstallationObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagInstallationsApi api;
        SwagUpdatedInstallationObject response;
        SwagUpdatedInstallationObject expectedResponse;

        api = new SwagInstallationsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "updated" : "updated"\n}');
        expectedResponse = SwagUpdatedInstallationObject.getExample();
        response = (SwagUpdatedInstallationObject) api.updateInstallation(params);
        System.assertEquals(expectedResponse, response);
    }
}