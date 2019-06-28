@isTest
private class SwagUsersApiTest {
    /**
     * Add User
     *
     *  |\r\n    Used to add a new &#x60;User&#x60; object to the EMS database.
     */
    @isTest
    private static void addUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagUserCredentialsObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagUsersApi api;
        SwagUseridObject response;
        SwagUseridObject expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_id" : "_id"\n}');
        expectedResponse = SwagUseridObject.getExample();
        response = (SwagUseridObject) api.addUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete User
     *
     *  |\r\n    Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
     */
    @isTest
    private static void deleteUserTest() {
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
        SwagUsersApi api;

        api = new SwagUsersApi(new SwagClient());

        api.deleteUser(params);
    }

    /**
     * Get User
     *
     *  |\r\n    Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
     */
    @isTest
    private static void getUserTest() {
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
        SwagUsersApi api;
        SwagUserObject response;
        SwagUserObject expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "id" : "id",\n  "username" : "username"\n}');
        expectedResponse = SwagUserObject.getExample();
        response = (SwagUserObject) api.getUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Fields
     *
     *  |\r\n    Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
     */
    @isTest
    private static void getUserFieldsTest() {
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
        SwagUsersApi api;
        List<SwagFieldObject> response;
        List<SwagFieldObject> expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n}, {\n  "custom" : true,\n  "name" : "name",\n  "fields" : [ {\n    "name" : "name"\n  }, {\n    "name" : "name"\n  } ]\n} ]');
        expectedResponse = new List<SwagFieldObject>{SwagFieldObject.getExample()};
        response = (List<SwagFieldObject>) api.getUserFields(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get User Groups
     *
     *  |\r\n    Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
     */
    @isTest
    private static void getUserGroupsTest() {
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
        SwagUsersApi api;
        List<String> response;
        List<String> expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ { }, { } ]');
        expectedResponse = new List<String>{String.getExample()};
        response = (List<String>) api.getUserGroups(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Users
     *
     *  |\r\n    Used to retrieve all data from &#x60;Users&#x60;.\r\n    Optional query param of **skip, limit, order, where** determines \r\n    size of returned array, filtered and order by.
     */
    @isTest
    private static void getUsersTest() {
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
        SwagUsersApi api;
        List<SwagUserObject> response;
        List<SwagUserObject> expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('[ {\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "id" : "id",\n  "username" : "username"\n}, {\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "id" : "id",\n  "username" : "username"\n} ]');
        expectedResponse = new List<SwagUserObject>{SwagUserObject.getExample()};
        response = (List<SwagUserObject>) api.getUsers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Log In
     *
     *  |\r\n    Logs in to the EMS Server with a specific EMS User.
     */
    @isTest
    private static void loginUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagUserCredentialsObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagUsersApi api;
        SwagUserTokenObject response;
        SwagUserTokenObject expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_meta" : {\n    "creator" : "creator",\n    "created" : "created",\n    "updated" : "updated"\n  },\n  "id" : "id",\n  "sessiontoken" : "sessiontoken",\n  "username" : "username"\n}');
        expectedResponse = SwagUserTokenObject.getExample();
        response = (SwagUserTokenObject) api.loginUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * sPostLogoutSummaryTitle
     *
     * sPostLogoutSummaryDesc
     */
    @isTest
    private static void logoutUserTest() {
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
        SwagUsersApi api;

        api = new SwagUsersApi(new SwagClient());

        api.logoutUser(params);
    }

    /**
     * Sign Up  User
     *
     *  |\r\n    Signs up to the EMS Server with an appropriate EMS User.
     */
    @isTest
    private static void signupUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagUserCredentialsObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagUsersApi api;
        SwagUserSignUpResponseObject response;
        SwagUserSignUpResponseObject expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "sessionToken" : "sessionToken",\n  "_id" : "_id"\n}');
        expectedResponse = SwagUserSignUpResponseObject.getExample();
        response = (SwagUserSignUpResponseObject) api.signupUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update User
     *
     *  |\r\n    Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
     */
    @isTest
    private static void updateUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'id_example',
            'body' => SwagUpdateObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagUsersApi api;
        SwagUpdatedObject response;
        SwagUpdatedObject expectedResponse;

        api = new SwagUsersApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "updated" : "updated"\n}');
        expectedResponse = SwagUpdatedObject.getExample();
        response = (SwagUpdatedObject) api.updateUser(params);
        System.assertEquals(expectedResponse, response);
    }
}