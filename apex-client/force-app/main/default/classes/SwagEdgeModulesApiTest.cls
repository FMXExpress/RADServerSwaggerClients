@isTest
private class SwagEdgeModulesApiTest {
    /**
     * Get Module
     *
     *  |\r\n    Used to retrieve all data from &#x60;EdgeModule&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.
     */
    @isTest
    private static void getModuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        SwagEdgeModuleObject response;
        SwagEdgeModuleObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "protocol" : "protocol",\n  "protocolprops" : "protocolprops",\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "_id" : "_id"\n}');
        expectedResponse = SwagEdgeModuleObject.getExample();
        response = (SwagEdgeModuleObject) api.getModule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get EdgeModule Resource
     *
     *  |\r\n    Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
     */
    @isTest
    private static void getModuleResourceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'name' => 'name_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        SwagEdgeModuleResourceObject response;
        SwagEdgeModuleResourceObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "resourcename" : "resourcename",\n  "moduleid" : "moduleid"\n}');
        expectedResponse = SwagEdgeModuleResourceObject.getExample();
        response = (SwagEdgeModuleResourceObject) api.getModuleResource(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get EdgeModule Resources
     *
     *  |\r\n    Used to retrieve all data from the resources of an EdgeModule.
     */
    @isTest
    private static void getModuleResourcesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        List<SwagEdgeModuleResourceObject> response;
        List<SwagEdgeModuleResourceObject> expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "resourcename" : "resourcename",\n  "moduleid" : "moduleid"\n}, {\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "resourcename" : "resourcename",\n  "moduleid" : "moduleid"\n} ]');
        expectedResponse = new List<SwagEdgeModuleResourceObject>{SwagEdgeModuleResourceObject.getExample()};
        response = (List<SwagEdgeModuleResourceObject>) api.getModuleResources(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Module
     *
     *  |\r\n    Used to retrieve all data from &#x60;EdgeModule&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.
     */
    @isTest
    private static void getModulesTest() {
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
        SwagEdgeModulesApi api;
        List<SwagEdgeModuleObject> response;
        List<SwagEdgeModuleObject> expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "protocol" : "protocol",\n  "protocolprops" : "protocolprops",\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "_id" : "_id"\n}, {\n  "protocol" : "protocol",\n  "protocolprops" : "protocolprops",\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "_id" : "_id"\n} ]');
        expectedResponse = new List<SwagEdgeModuleObject>{SwagEdgeModuleObject.getExample()};
        response = (List<SwagEdgeModuleObject>) api.getModules(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Fields
     *
     *  |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
     */
    @isTest
    private static void getModulesFieldsTest() {
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
        SwagEdgeModulesApi api;
        SwagFieldsEdgeModuleObject response;
        SwagFieldsEdgeModuleObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n}');
        expectedResponse = SwagFieldsEdgeModuleObject.getExample();
        response = (SwagFieldsEdgeModuleObject) api.getModulesFields(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get EdgeModules Resources
     *
     *  |\r\n    Used to retrieve all data from the resources of all EdgeModules.
     */
    @isTest
    private static void getResourcesTest() {
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
        SwagEdgeModulesApi api;
        List<SwagEdgeModuleResourceObject> response;
        List<SwagEdgeModuleResourceObject> expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "resourcename" : "resourcename",\n  "moduleid" : "moduleid"\n}, {\n  "modulename" : "modulename",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "resourcename" : "resourcename",\n  "moduleid" : "moduleid"\n} ]');
        expectedResponse = new List<SwagEdgeModuleResourceObject>{SwagEdgeModuleResourceObject.getExample()};
        response = (List<SwagEdgeModuleResourceObject>) api.getResources(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Resource Fields
     *
     *  |\r\n    Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
     */
    @isTest
    private static void getResourcesFieldsTest() {
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
        SwagEdgeModulesApi api;
        SwagFieldsEdgeModuleObject response;
        SwagFieldsEdgeModuleObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n}');
        expectedResponse = SwagFieldsEdgeModuleObject.getExample();
        response = (SwagFieldsEdgeModuleObject) api.getResourcesFields(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add Module
     *
     *  |\r\n    Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
     */
    @isTest
    private static void registerModuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagEdgeModuleAddObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        SwagEdgeModuleAddedObject response;
        SwagEdgeModuleAddedObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "modulename" : "modulename",\n  "_id" : "_id"\n}');
        expectedResponse = SwagEdgeModuleAddedObject.getExample();
        response = (SwagEdgeModuleAddedObject) api.registerModule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add Module Resource
     *
     *  |\r\n    Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
     */
    @isTest
    private static void registerModuleResourceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'body' => SwagEdgeModuleResourceAddObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        SwagEdgeModuleResourceAddedObject response;
        SwagEdgeModuleResourceAddedObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "resourcename" : "resourcename"\n}');
        expectedResponse = SwagEdgeModuleResourceAddedObject.getExample();
        response = (SwagEdgeModuleResourceAddedObject) api.registerModuleResource(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete Module
     *
     *  |\r\n    Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
     */
    @isTest
    private static void unregisterModuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;

        api = new SwagEdgeModulesApi(new SwagClient());

        api.unregisterModule(params);
    }

    /**
     * Delete Module Resource
     *
     *  |\r\n    Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
     */
    @isTest
    private static void unregisterModuleResourceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'name' => 'name_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;

        api = new SwagEdgeModulesApi(new SwagClient());

        api.unregisterModuleResource(params);
    }

    /**
     * Update Module
     *
     *  |\r\n    Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
     */
    @isTest
    private static void updateModuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'body' => SwagEdgeModuleUpdateObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        SwagEdgeModuleUpdatedObject response;
        SwagEdgeModuleUpdatedObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "updated" : "updated"\n}');
        expectedResponse = SwagEdgeModuleUpdatedObject.getExample();
        response = (SwagEdgeModuleUpdatedObject) api.updateModule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Module Resource
     *
     *  |\r\n    Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
     */
    @isTest
    private static void updateModuleResourceTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'name' => 'name_example',
            'body' => SwagEdgeModuleResourceUpdateObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesApi api;
        SwagEdgeModuleResourceUpdatedObject response;
        SwagEdgeModuleResourceUpdatedObject expectedResponse;

        api = new SwagEdgeModulesApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "updated" : "updated"\n}');
        expectedResponse = SwagEdgeModuleResourceUpdatedObject.getExample();
        response = (SwagEdgeModuleResourceUpdatedObject) api.updateModuleResource(params);
        System.assertEquals(expectedResponse, response);
    }
}