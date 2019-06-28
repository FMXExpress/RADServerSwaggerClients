(ns ems-api-documentation.api.edge-modules-invokers
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-resource-endpoint-with-http-info
  "Invoke Resource Delete Method
  Used to invoke the DELETE method of the resource from an existing EMS EdgeModule."
  ([mname rname ] (delete-resource-endpoint-with-http-info mname rname nil))
  ([mname rname {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname)
   (call-api "/edgemodules/{mname}/{rname}" :delete
             {:path-params   {"mname" mname "rname" rname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn delete-resource-endpoint
  "Invoke Resource Delete Method
  Used to invoke the DELETE method of the resource from an existing EMS EdgeModule."
  ([mname rname ] (delete-resource-endpoint mname rname nil))
  ([mname rname optional-params]
   (:data (delete-resource-endpoint-with-http-info mname rname optional-params))))

(defn delete-resource-endpoint-item-with-http-info
  "Invoke Resource/* Delete Method
  Used to invoke the DELETE method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard ] (delete-resource-endpoint-item-with-http-info mname rname wildcard nil))
  ([mname rname wildcard {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname wildcard)
   (call-api "/edgemodules/{mname}/{rname}/{wildcard}" :delete
             {:path-params   {"mname" mname "rname" rname "wildcard" wildcard }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn delete-resource-endpoint-item
  "Invoke Resource/* Delete Method
  Used to invoke the DELETE method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard ] (delete-resource-endpoint-item mname rname wildcard nil))
  ([mname rname wildcard optional-params]
   (:data (delete-resource-endpoint-item-with-http-info mname rname wildcard optional-params))))

(defn get-resource-endpoint-with-http-info
  "Invoke Resource Get Method
  Used to invoke the GET method of the resource from an existing EMS EdgeModule."
  ([mname rname ] (get-resource-endpoint-with-http-info mname rname nil))
  ([mname rname {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname)
   (call-api "/edgemodules/{mname}/{rname}" :get
             {:path-params   {"mname" mname "rname" rname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-resource-endpoint
  "Invoke Resource Get Method
  Used to invoke the GET method of the resource from an existing EMS EdgeModule."
  ([mname rname ] (get-resource-endpoint mname rname nil))
  ([mname rname optional-params]
   (:data (get-resource-endpoint-with-http-info mname rname optional-params))))

(defn get-resource-endpoint-item-with-http-info
  "Invoke Resource/* Get Method
  Used to invoke the GET method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard ] (get-resource-endpoint-item-with-http-info mname rname wildcard nil))
  ([mname rname wildcard {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname wildcard)
   (call-api "/edgemodules/{mname}/{rname}/{wildcard}" :get
             {:path-params   {"mname" mname "rname" rname "wildcard" wildcard }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn get-resource-endpoint-item
  "Invoke Resource/* Get Method
  Used to invoke the GET method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard ] (get-resource-endpoint-item mname rname wildcard nil))
  ([mname rname wildcard optional-params]
   (:data (get-resource-endpoint-item-with-http-info mname rname wildcard optional-params))))

(defn patch-resource-endpoint-with-http-info
  "Invoke Resource Patch Method
  Used to invoke the PATCH method of the resource from an existing EMS EdgeModule."
  ([mname rname body ] (patch-resource-endpoint-with-http-info mname rname body nil))
  ([mname rname body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname body)
   (call-api "/edgemodules/{mname}/{rname}" :patch
             {:path-params   {"mname" mname "rname" rname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn patch-resource-endpoint
  "Invoke Resource Patch Method
  Used to invoke the PATCH method of the resource from an existing EMS EdgeModule."
  ([mname rname body ] (patch-resource-endpoint mname rname body nil))
  ([mname rname body optional-params]
   (:data (patch-resource-endpoint-with-http-info mname rname body optional-params))))

(defn patch-resource-endpoint-item-with-http-info
  "Invoke Resource/* Patch Method
  Used to invoke the PATCH method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard body ] (patch-resource-endpoint-item-with-http-info mname rname wildcard body nil))
  ([mname rname wildcard body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname wildcard body)
   (call-api "/edgemodules/{mname}/{rname}/{wildcard}" :patch
             {:path-params   {"mname" mname "rname" rname "wildcard" wildcard }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn patch-resource-endpoint-item
  "Invoke Resource/* Patch Method
  Used to invoke the PATCH method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard body ] (patch-resource-endpoint-item mname rname wildcard body nil))
  ([mname rname wildcard body optional-params]
   (:data (patch-resource-endpoint-item-with-http-info mname rname wildcard body optional-params))))

(defn post-resource-endpoint-with-http-info
  "Invoke Resource Post Method
  Used to invoke the POST method of the resource from an existing EMS EdgeModule."
  ([mname rname body ] (post-resource-endpoint-with-http-info mname rname body nil))
  ([mname rname body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname body)
   (call-api "/edgemodules/{mname}/{rname}" :post
             {:path-params   {"mname" mname "rname" rname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn post-resource-endpoint
  "Invoke Resource Post Method
  Used to invoke the POST method of the resource from an existing EMS EdgeModule."
  ([mname rname body ] (post-resource-endpoint mname rname body nil))
  ([mname rname body optional-params]
   (:data (post-resource-endpoint-with-http-info mname rname body optional-params))))

(defn post-resource-endpoint-item-with-http-info
  "Invoke Resource/* Post Method
  Used to invoke the POST method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard body ] (post-resource-endpoint-item-with-http-info mname rname wildcard body nil))
  ([mname rname wildcard body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname wildcard body)
   (call-api "/edgemodules/{mname}/{rname}/{wildcard}" :post
             {:path-params   {"mname" mname "rname" rname "wildcard" wildcard }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn post-resource-endpoint-item
  "Invoke Resource/* Post Method
  Used to invoke the POST method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard body ] (post-resource-endpoint-item mname rname wildcard body nil))
  ([mname rname wildcard body optional-params]
   (:data (post-resource-endpoint-item-with-http-info mname rname wildcard body optional-params))))

(defn put-resource-endpoint-with-http-info
  "Invoke Resource Put Method
  Used to invoke the PUT method of the resource from an existing EMS EdgeModule."
  ([mname rname body ] (put-resource-endpoint-with-http-info mname rname body nil))
  ([mname rname body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname body)
   (call-api "/edgemodules/{mname}/{rname}" :put
             {:path-params   {"mname" mname "rname" rname }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn put-resource-endpoint
  "Invoke Resource Put Method
  Used to invoke the PUT method of the resource from an existing EMS EdgeModule."
  ([mname rname body ] (put-resource-endpoint mname rname body nil))
  ([mname rname body optional-params]
   (:data (put-resource-endpoint-with-http-info mname rname body optional-params))))

(defn put-resource-endpoint-item-with-http-info
  "Invoke Resource/* Put Method
  Used to invoke the PUT method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard body ] (put-resource-endpoint-item-with-http-info mname rname wildcard body nil))
  ([mname rname wildcard body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params mname rname wildcard body)
   (call-api "/edgemodules/{mname}/{rname}/{wildcard}" :put
             {:path-params   {"mname" mname "rname" rname "wildcard" wildcard }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn put-resource-endpoint-item
  "Invoke Resource/* Put Method
  Used to invoke the PUT method of the resource from an existing EMS EdgeModule."
  ([mname rname wildcard body ] (put-resource-endpoint-item mname rname wildcard body nil))
  ([mname rname wildcard body optional-params]
   (:data (put-resource-endpoint-item-with-http-info mname rname wildcard body optional-params))))

