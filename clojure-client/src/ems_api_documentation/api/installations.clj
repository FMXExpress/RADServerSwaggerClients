(ns ems-api-documentation.api.installations
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn add-installation-with-http-info
  "Add Installation
  |
    Used to add a new `Installation` object to the EMS database."
  ([body ] (add-installation-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/installations" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn add-installation
  "Add Installation
  |
    Used to add a new `Installation` object to the EMS database."
  ([body ] (add-installation body nil))
  ([body optional-params]
   (:data (add-installation-with-http-info body optional-params))))

(defn delete-installation-with-http-info
  "Delete Installation
  |
    Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database."
  ([id ] (delete-installation-with-http-info id nil))
  ([id {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id)
   (call-api "/installations/{id}" :delete
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn delete-installation
  "Delete Installation
  |
    Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database."
  ([id ] (delete-installation id nil))
  ([id optional-params]
   (:data (delete-installation-with-http-info id optional-params))))

(defn get-channels-with-http-info
  "Get Installation Channels
  |
     Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database."
  ([] (get-channels-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/installations/channels" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-channels
  "Get Installation Channels
  |
     Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database."
  ([] (get-channels nil))
  ([optional-params]
   (:data (get-channels-with-http-info optional-params))))

(defn get-installation-with-http-info
  "Get Installation
  |
    Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database."
  ([id ] (get-installation-with-http-info id nil))
  ([id {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id)
   (call-api "/installations/{id}" :get
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-installation
  "Get Installation
  |
    Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database."
  ([id ] (get-installation id nil))
  ([id optional-params]
   (:data (get-installation-with-http-info id optional-params))))

(defn get-installation-fields-with-http-info
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS Installation (including the custom fields)."
  ([] (get-installation-fields-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/installations/fields" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-installation-fields
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS Installation (including the custom fields)."
  ([] (get-installation-fields nil))
  ([optional-params]
   (:data (get-installation-fields-with-http-info optional-params))))

(defn get-installations-with-http-info
  "Get Installations
  |
    Used to retrieve all data from `Installation`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-installations-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret skip limit order where ]}]
   (call-api "/installations" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {"skip" skip "limit" limit "order" order "where" where }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-installations
  "Get Installations
  |
    Used to retrieve all data from `Installation`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-installations nil))
  ([optional-params]
   (:data (get-installations-with-http-info optional-params))))

(defn update-installation-with-http-info
  "Update Installation
  |
    Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database."
  ([id body ] (update-installation-with-http-info id body nil))
  ([id body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params id body)
   (call-api "/installations/{id}" :put
             {:path-params   {"id" id }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn update-installation
  "Update Installation
  |
    Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database."
  ([id body ] (update-installation id body nil))
  ([id body optional-params]
   (:data (update-installation-with-http-info id body optional-params))))

