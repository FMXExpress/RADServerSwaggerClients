(ns ems-api-documentation.api.push
  (:require [ems-api-documentation.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn send-with-http-info
  "Send Push
  Used to send a push notification message to a registered device"
  ([body ] (send-with-http-info body nil))
  ([body {:keys [x-embarcadero-application-id x-embarcadero-app-secret x-embarcadero-master-secret ]}]
   (check-required-params body)
   (call-api "/push" :post
             {:path-params   {}
              :header-params {"X-Embarcadero-Application-Id" x-embarcadero-application-id "X-Embarcadero-App-Secret" x-embarcadero-app-secret "X-Embarcadero-Master-Secret" x-embarcadero-master-secret }
              :query-params  {}
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn send
  "Send Push
  Used to send a push notification message to a registered device"
  ([body ] (send body nil))
  ([body optional-params]
   (:data (send-with-http-info body optional-params))))

