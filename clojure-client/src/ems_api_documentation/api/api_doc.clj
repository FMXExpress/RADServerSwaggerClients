(ns ems-api-documentation.api.api-doc
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn a-pi-with-http-info
  "Get API EndPoints
  |
    Used to retrieve all the API EndPoints."
  ([] (a-pi-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/api" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn a-pi
  "Get API EndPoints
  |
    Used to retrieve all the API EndPoints."
  ([] (a-pi nil))
  ([optional-params]
   (:data (a-pi-with-http-info optional-params))))

(defn get-apijson-format-with-http-info
  "Get JSON
  Get API in JSON format"
  ([] (get-apijson-format-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/api/apidoc.json" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn get-apijson-format
  "Get JSON
  Get API in JSON format"
  ([] (get-apijson-format nil))
  ([optional-params]
   (:data (get-apijson-format-with-http-info optional-params))))

(defn get-apiyaml-format-with-http-info
  "Get YAML
  Get API in YAML format"
  ([] (get-apiyaml-format-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/api/apidoc.yaml" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn get-apiyaml-format
  "Get YAML
  Get API in YAML format"
  ([] (get-apiyaml-format nil))
  ([optional-params]
   (:data (get-apiyaml-format-with-http-info optional-params))))

(defn get-apiyaml-format-end-point-with-http-info
  "Get API EndPoint
  |
    Used to retrieve an EndPoint for the API EndPoints."
  ([item ] (get-apiyaml-format-end-point-with-http-info item nil))
  ([item {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params item)
   (call-api "/api/{item}/apidoc.yaml" :get
             {:path-params   {"item" item }
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-apiyaml-format-end-point
  "Get API EndPoint
  |
    Used to retrieve an EndPoint for the API EndPoints."
  ([item ] (get-apiyaml-format-end-point item nil))
  ([item optional-params]
   (:data (get-apiyaml-format-end-point-with-http-info item optional-params))))

