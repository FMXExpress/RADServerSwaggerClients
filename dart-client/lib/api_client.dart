part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "http://localhost:8080"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ChannelName':
          return new ChannelName.fromJson(value);
        case 'EdgeModuleAddObject':
          return new EdgeModuleAddObject.fromJson(value);
        case 'EdgeModuleAddedObject':
          return new EdgeModuleAddedObject.fromJson(value);
        case 'EdgeModuleObject':
          return new EdgeModuleObject.fromJson(value);
        case 'EdgeModuleResourceAddObject':
          return new EdgeModuleResourceAddObject.fromJson(value);
        case 'EdgeModuleResourceAddedObject':
          return new EdgeModuleResourceAddedObject.fromJson(value);
        case 'EdgeModuleResourceObject':
          return new EdgeModuleResourceObject.fromJson(value);
        case 'EdgeModuleResourceUpdateObject':
          return new EdgeModuleResourceUpdateObject.fromJson(value);
        case 'EdgeModuleResourceUpdatedObject':
          return new EdgeModuleResourceUpdatedObject.fromJson(value);
        case 'EdgeModuleUpdateObject':
          return new EdgeModuleUpdateObject.fromJson(value);
        case 'EdgeModuleUpdatedObject':
          return new EdgeModuleUpdatedObject.fromJson(value);
        case 'FieldGroupObject':
          return new FieldGroupObject.fromJson(value);
        case 'FieldInstallationObject':
          return new FieldInstallationObject.fromJson(value);
        case 'FieldObject':
          return new FieldObject.fromJson(value);
        case 'FieldObjectFields':
          return new FieldObjectFields.fromJson(value);
        case 'FieldsEdgeModuleObject':
          return new FieldsEdgeModuleObject.fromJson(value);
        case 'GroupAddObject':
          return new GroupAddObject.fromJson(value);
        case 'GroupName':
          return new GroupName.fromJson(value);
        case 'GroupObject':
          return new GroupObject.fromJson(value);
        case 'InstallationAddObject':
          return new InstallationAddObject.fromJson(value);
        case 'InstallationAddedObject':
          return new InstallationAddedObject.fromJson(value);
        case 'InstallationObject':
          return new InstallationObject.fromJson(value);
        case 'MetaEdgeModuleObject':
          return new MetaEdgeModuleObject.fromJson(value);
        case 'MetaGroupObject':
          return new MetaGroupObject.fromJson(value);
        case 'MetaInstallationObject':
          return new MetaInstallationObject.fromJson(value);
        case 'MetaObject':
          return new MetaObject.fromJson(value);
        case 'PushDataObject':
          return new PushDataObject.fromJson(value);
        case 'PushDataObjectAps':
          return new PushDataObjectAps.fromJson(value);
        case 'PushDataObjectExtras':
          return new PushDataObjectExtras.fromJson(value);
        case 'PushDataObjectGcm':
          return new PushDataObjectGcm.fromJson(value);
        case 'PushObject':
          return new PushObject.fromJson(value);
        case 'PushWhereObject':
          return new PushWhereObject.fromJson(value);
        case 'PushWhereObjectDeviceToken':
          return new PushWhereObjectDeviceToken.fromJson(value);
        case 'UpdateGroupObject':
          return new UpdateGroupObject.fromJson(value);
        case 'UpdateInstallationObject':
          return new UpdateInstallationObject.fromJson(value);
        case 'UpdateObject':
          return new UpdateObject.fromJson(value);
        case 'UpdatedGroupObject':
          return new UpdatedGroupObject.fromJson(value);
        case 'UpdatedInstallationObject':
          return new UpdatedInstallationObject.fromJson(value);
        case 'UpdatedObject':
          return new UpdatedObject.fromJson(value);
        case 'UserCredentialsObject':
          return new UserCredentialsObject.fromJson(value);
        case 'UserObject':
          return new UserObject.fromJson(value);
        case 'UserSignUpResponseObject':
          return new UserSignUpResponseObject.fromJson(value);
        case 'UserTokenObject':
          return new UserTokenObject.fromJson(value);
        case 'UseridObject':
          return new UseridObject.fromJson(value);
        case 'VersionObject':
          return new VersionObject.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
