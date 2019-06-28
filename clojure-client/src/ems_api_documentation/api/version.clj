(ns ems-api-documentation.api.version
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn get-version-with-http-info
  "Get version
  |
    Used to retrieve the `Version` of the EMS Server."
  ([] (get-version-with-http-info nil))
  ([{:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (call-api "/version" :get
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn get-version
  "Get version
  |
    Used to retrieve the `Version` of the EMS Server."
  ([] (get-version nil))
  ([optional-params]
   (:data (get-version-with-http-info optional-params))))

