(ns ems-api-documentation.api.users
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn add-user-with-http-info
  "Add User
  |
    Used to add a new `User` object to the EMS database."
  ([body ] (add-user-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/users" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn add-user
  "Add User
  |
    Used to add a new `User` object to the EMS database."
  ([body ] (add-user body nil))
  ([body optional-params]
   (:data (add-user-with-http-info body optional-params))))

(defn delete-user-with-http-info
  "Delete User
  |
    Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id ] (delete-user-with-http-info id nil))
  ([id {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id)
   (call-api "/users/{id}" :delete
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn delete-user
  "Delete User
  |
    Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id ] (delete-user id nil))
  ([id optional-params]
   (:data (delete-user-with-http-info id optional-params))))

(defn get-user-with-http-info
  "Get User
  |
    Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id ] (get-user-with-http-info id nil))
  ([id {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id)
   (call-api "/users/{id}" :get
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-user
  "Get User
  |
    Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id ] (get-user id nil))
  ([id optional-params]
   (:data (get-user-with-http-info id optional-params))))

(defn get-user-fields-with-http-info
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS Users (including the custom fields)."
  ([] (get-user-fields-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/users/fields" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-user-fields
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS Users (including the custom fields)."
  ([] (get-user-fields nil))
  ([optional-params]
   (:data (get-user-fields-with-http-info optional-params))))

(defn get-user-groups-with-http-info
  "Get User Groups
  |
    Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id ] (get-user-groups-with-http-info id nil))
  ([id {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id)
   (call-api "/users/{id}/groups" :get
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-user-groups
  "Get User Groups
  |
    Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id ] (get-user-groups id nil))
  ([id optional-params]
   (:data (get-user-groups-with-http-info id optional-params))))

(defn get-users-with-http-info
  "Get Users
  |
    Used to retrieve all data from `Users`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-users-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret skip limit order where ]}]
   (call-api "/users" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {"skip" skip "limit" limit "order" order "where" where }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-users
  "Get Users
  |
    Used to retrieve all data from `Users`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-users nil))
  ([optional-params]
   (:data (get-users-with-http-info optional-params))))

(defn login-user-with-http-info
  "Log In
  |
    Logs in to the EMS Server with a specific EMS User."
  ([body ] (login-user-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/users/login" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn login-user
  "Log In
  |
    Logs in to the EMS Server with a specific EMS User."
  ([body ] (login-user body nil))
  ([body optional-params]
   (:data (login-user-with-http-info body optional-params))))

(defn logout-user-with-http-info
  "sPostLogoutSummaryTitle
  sPostLogoutSummaryDesc"
  ([] (logout-user-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/users/logout" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn logout-user
  "sPostLogoutSummaryTitle
  sPostLogoutSummaryDesc"
  ([] (logout-user nil))
  ([optional-params]
   (:data (logout-user-with-http-info optional-params))))

(defn signup-user-with-http-info
  "Sign Up  User
  |
    Signs up to the EMS Server with an appropriate EMS User."
  ([body ] (signup-user-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/users/signup" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn signup-user
  "Sign Up  User
  |
    Signs up to the EMS Server with an appropriate EMS User."
  ([body ] (signup-user body nil))
  ([body optional-params]
   (:data (signup-user-with-http-info body optional-params))))

(defn update-user-with-http-info
  "Update User
  |
    Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id body ] (update-user-with-http-info id body nil))
  ([id body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id body)
   (call-api "/users/{id}" :put
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn update-user
  "Update User
  |
    Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database."
  ([id body ] (update-user id body nil))
  ([id body optional-params]
   (:data (update-user-with-http-info id body optional-params))))

