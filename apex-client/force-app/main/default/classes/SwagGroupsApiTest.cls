@isTest
private class SwagGroupsApiTest {
    /**
     * Add Group
     *
     *  |\r\n    Used to add a new &#x60;Group&#x60; object to the EMS database.
     */
    @isTest
    private static void addGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagGroupAddObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagGroupsApi api;

        api = new SwagGroupsApi(new SwagClient());

        api.addGroup(params);
    }

    /**
     * Delete Group
     *
     *  |\r\n    Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
     */
    @isTest
    private static void deleteGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'item' => 'item_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagGroupsApi api;

        api = new SwagGroupsApi(new SwagClient());

        api.deleteGroup(params);
    }

    /**
     * Get Group
     *
     *  |\r\n    Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
     */
    @isTest
    private static void getGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'item' => 'item_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagGroupsApi api;
        SwagGroupObject response;
        SwagGroupObject expectedResponse;

        api = new SwagGroupsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "name",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "users" : [ "users", "users" ]\n}');
        expectedResponse = SwagGroupObject.getExample();
        response = (SwagGroupObject) api.getGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Fields
     *
     *  |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
     */
    @isTest
    private static void getGroupFieldsTest() {
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
        SwagGroupsApi api;
        List<SwagFieldGroupObject> response;
        List<SwagFieldGroupObject> expectedResponse;

        api = new SwagGroupsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n}, {\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n} ]');
        expectedResponse = new List<SwagFieldGroupObject>{SwagFieldGroupObject.getExample()};
        response = (List<SwagFieldGroupObject>) api.getGroupFields(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Groups
     *
     *  |\r\n    Used to retrieve all data from &#x60;Groups&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.
     */
    @isTest
    private static void getGroupsTest() {
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
        SwagGroupsApi api;
        List<SwagGroupObject> response;
        List<SwagGroupObject> expectedResponse;

        api = new SwagGroupsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "name" : "name",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "users" : [ "users", "users" ]\n}, {\n  "name" : "name",\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "users" : [ "users", "users" ]\n} ]');
        expectedResponse = new List<SwagGroupObject>{SwagGroupObject.getExample()};
        response = (List<SwagGroupObject>) api.getGroups(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Group
     *
     *  |\r\n    Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
     */
    @isTest
    private static void updateGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'item' => 'item_example',
            'body' => SwagUpdateGroupObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagGroupsApi api;
        SwagUpdatedGroupObject response;
        SwagUpdatedGroupObject expectedResponse;

        api = new SwagGroupsApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "updated" : "updated"\n}');
        expectedResponse = SwagUpdatedGroupObject.getExample();
        response = (SwagUpdatedGroupObject) api.updateGroup(params);
        System.assertEquals(expectedResponse, response);
    }
}