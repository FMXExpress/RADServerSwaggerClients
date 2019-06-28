(ns ems-api-documentation.api.groups
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn add-group-with-http-info
  "Add Group
  |
    Used to add a new `Group` object to the EMS database."
  ([body ] (add-group-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/groups" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn add-group
  "Add Group
  |
    Used to add a new `Group` object to the EMS database."
  ([body ] (add-group body nil))
  ([body optional-params]
   (:data (add-group-with-http-info body optional-params))))

(defn delete-group-with-http-info
  "Delete Group
  |
    Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database."
  ([item ] (delete-group-with-http-info item nil))
  ([item {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params item)
   (call-api "/groups/{item}" :delete
             {:path-params   {"item" item }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn delete-group
  "Delete Group
  |
    Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database."
  ([item ] (delete-group item nil))
  ([item optional-params]
   (:data (delete-group-with-http-info item optional-params))))

(defn get-group-with-http-info
  "Get Group
  |
    Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database."
  ([item ] (get-group-with-http-info item nil))
  ([item {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params item)
   (call-api "/groups/{item}" :get
             {:path-params   {"item" item }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-group
  "Get Group
  |
    Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database."
  ([item ] (get-group item nil))
  ([item optional-params]
   (:data (get-group-with-http-info item optional-params))))

(defn get-group-fields-with-http-info
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS Group (including the custom fields)."
  ([] (get-group-fields-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/groups/fields" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-group-fields
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS Group (including the custom fields)."
  ([] (get-group-fields nil))
  ([optional-params]
   (:data (get-group-fields-with-http-info optional-params))))

(defn get-groups-with-http-info
  "Get Groups
  |
    Used to retrieve all data from `Groups`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-groups-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret skip limit order where ]}]
   (call-api "/groups" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {"skip" skip "limit" limit "order" order "where" where }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-groups
  "Get Groups
  |
    Used to retrieve all data from `Groups`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-groups nil))
  ([optional-params]
   (:data (get-groups-with-http-info optional-params))))

(defn update-group-with-http-info
  "Update Group
  |
    Used to update a `Group`. **item** is the unique EMS Group name in the EMS database."
  ([item body ] (update-group-with-http-info item body nil))
  ([item body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params item body)
   (call-api "/groups/{item}" :put
             {:path-params   {"item" item }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn update-group
  "Update Group
  |
    Used to update a `Group`. **item** is the unique EMS Group name in the EMS database."
  ([item body ] (update-group item body nil))
  ([item body optional-params]
   (:data (update-group-with-http-info item body optional-params))))

