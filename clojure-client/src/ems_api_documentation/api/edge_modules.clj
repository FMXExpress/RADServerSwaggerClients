(ns ems-api-documentation.api.edge-modules
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-module-with-http-info
  "Get Module
  |
    Used to retrieve all data from `EdgeModule`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([mname ] (get-module-with-http-info mname nil))
  ([mname {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname)
   (call-api "/edgemodules/{mname}" :get
             {:path-params   {"mname" mname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-module
  "Get Module
  |
    Used to retrieve all data from `EdgeModule`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([mname ] (get-module mname nil))
  ([mname optional-params]
   (:data (get-module-with-http-info mname optional-params))))

(defn get-module-resource-with-http-info
  "Get EdgeModule Resource
  |
    Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource."
  ([mname name ] (get-module-resource-with-http-info mname name nil))
  ([mname name {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname name)
   (call-api "/edgemodules/{mname}/resources/{name}" :get
             {:path-params   {"mname" mname "name" name }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-module-resource
  "Get EdgeModule Resource
  |
    Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource."
  ([mname name ] (get-module-resource mname name nil))
  ([mname name optional-params]
   (:data (get-module-resource-with-http-info mname name optional-params))))

(defn get-module-resources-with-http-info
  "Get EdgeModule Resources
  |
    Used to retrieve all data from the resources of an EdgeModule."
  ([mname ] (get-module-resources-with-http-info mname nil))
  ([mname {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname)
   (call-api "/edgemodules/{mname}/resources" :get
             {:path-params   {"mname" mname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-module-resources
  "Get EdgeModule Resources
  |
    Used to retrieve all data from the resources of an EdgeModule."
  ([mname ] (get-module-resources mname nil))
  ([mname optional-params]
   (:data (get-module-resources-with-http-info mname optional-params))))

(defn get-modules-with-http-info
  "Get Module
  |
    Used to retrieve all data from `EdgeModule`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-modules-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/edgemodules" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-modules
  "Get Module
  |
    Used to retrieve all data from `EdgeModule`.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by."
  ([] (get-modules nil))
  ([optional-params]
   (:data (get-modules-with-http-info optional-params))))

(defn get-modules-fields-with-http-info
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields)."
  ([] (get-modules-fields-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/edgemodules/fields" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-modules-fields
  "Get Fields
  |
    Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields)."
  ([] (get-modules-fields nil))
  ([optional-params]
   (:data (get-modules-fields-with-http-info optional-params))))

(defn get-resources-with-http-info
  "Get EdgeModules Resources
  |
    Used to retrieve all data from the resources of all EdgeModules."
  ([] (get-resources-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/edgemodules/resources" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-resources
  "Get EdgeModules Resources
  |
    Used to retrieve all data from the resources of all EdgeModules."
  ([] (get-resources nil))
  ([optional-params]
   (:data (get-resources-with-http-info optional-params))))

(defn get-resources-fields-with-http-info
  "Get Resource Fields
  |
    Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields)."
  ([] (get-resources-fields-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/edgemodules/resources/fields" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-resources-fields
  "Get Resource Fields
  |
    Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields)."
  ([] (get-resources-fields nil))
  ([optional-params]
   (:data (get-resources-fields-with-http-info optional-params))))

(defn register-module-with-http-info
  "Add Module
  |
    Used to add a new `EdgeModule` object to the EMS database."
  ([body ] (register-module-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/edgemodules" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn register-module
  "Add Module
  |
    Used to add a new `EdgeModule` object to the EMS database."
  ([body ] (register-module body nil))
  ([body optional-params]
   (:data (register-module-with-http-info body optional-params))))

(defn register-module-resource-with-http-info
  "Add Module Resource
  |
    Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database."
  ([mname body ] (register-module-resource-with-http-info mname body nil))
  ([mname body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname body)
   (call-api "/edgemodules/{mname}/resources" :post
             {:path-params   {"mname" mname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn register-module-resource
  "Add Module Resource
  |
    Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database."
  ([mname body ] (register-module-resource mname body nil))
  ([mname body optional-params]
   (:data (register-module-resource-with-http-info mname body optional-params))))

(defn unregister-module-with-http-info
  "Delete Module
  |
    Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource."
  ([mname ] (unregister-module-with-http-info mname nil))
  ([mname {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname)
   (call-api "/edgemodules/{mname}" :delete
             {:path-params   {"mname" mname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn unregister-module
  "Delete Module
  |
    Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource."
  ([mname ] (unregister-module mname nil))
  ([mname optional-params]
   (:data (unregister-module-with-http-info mname optional-params))))

(defn unregister-module-resource-with-http-info
  "Delete Module Resource
  |
    Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource."
  ([mname name ] (unregister-module-resource-with-http-info mname name nil))
  ([mname name {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname name)
   (call-api "/edgemodules/{mname}/resources/{name}" :delete
             {:path-params   {"mname" mname "name" name }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn unregister-module-resource
  "Delete Module Resource
  |
    Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource."
  ([mname name ] (unregister-module-resource mname name nil))
  ([mname name optional-params]
   (:data (unregister-module-resource-with-http-info mname name optional-params))))

(defn update-module-with-http-info
  "Update Module
  |
    Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database."
  ([mname body ] (update-module-with-http-info mname body nil))
  ([mname body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname body)
   (call-api "/edgemodules/{mname}" :put
             {:path-params   {"mname" mname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn update-module
  "Update Module
  |
    Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database."
  ([mname body ] (update-module mname body nil))
  ([mname body optional-params]
   (:data (update-module-with-http-info mname body optional-params))))

(defn update-module-resource-with-http-info
  "Update Module Resource
  |
    Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database."
  ([mname name body ] (update-module-resource-with-http-info mname name body nil))
  ([mname name body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname name body)
   (call-api "/edgemodules/{mname}/resources/{name}" :put
             {:path-params   {"mname" mname "name" name }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn update-module-resource
  "Update Module Resource
  |
    Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database."
  ([mname name body ] (update-module-resource mname name body nil))
  ([mname name body optional-params]
   (:data (update-module-resource-with-http-info mname name body optional-params))))

