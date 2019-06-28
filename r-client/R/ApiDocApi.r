# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title ApiDoc operations
#' @description swagger.ApiDoc
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' a_pi Get API EndPoints
#'
#'
#' get_apijson_format Get JSON
#'
#'
#' get_apiyaml_format Get YAML
#'
#'
#' get_apiyaml_format_end_point Get API EndPoint
#'
#' }
#'
#' @export
ApiDocApi <- R6::R6Class(
  'ApiDocApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    a_pi = function(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`x_embarcadero_application_id`)) {
        headerParams['X-Embarcadero-Application-Id'] <- `x_embarcadero_application_id`
      }

      if (!missing(`x_embarcadero_app_secret`)) {
        headerParams['X-Embarcadero-App-Secret'] <- `x_embarcadero_app_secret`
      }

      if (!missing(`x_embarcadero_master_secret`)) {
        headerParams['X-Embarcadero-Master-Secret'] <- `x_embarcadero_master_secret`
      }

      urlPath <- "/api"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_apijson_format = function(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`x_embarcadero_application_id`)) {
        headerParams['X-Embarcadero-Application-Id'] <- `x_embarcadero_application_id`
      }

      if (!missing(`x_embarcadero_app_secret`)) {
        headerParams['X-Embarcadero-App-Secret'] <- `x_embarcadero_app_secret`
      }

      if (!missing(`x_embarcadero_master_secret`)) {
        headerParams['X-Embarcadero-Master-Secret'] <- `x_embarcadero_master_secret`
      }

      urlPath <- "/api/apidoc.json"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_apiyaml_format = function(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`x_embarcadero_application_id`)) {
        headerParams['X-Embarcadero-Application-Id'] <- `x_embarcadero_application_id`
      }

      if (!missing(`x_embarcadero_app_secret`)) {
        headerParams['X-Embarcadero-App-Secret'] <- `x_embarcadero_app_secret`
      }

      if (!missing(`x_embarcadero_master_secret`)) {
        headerParams['X-Embarcadero-Master-Secret'] <- `x_embarcadero_master_secret`
      }

      urlPath <- "/api/apidoc.yaml"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_apiyaml_format_end_point = function(item, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`x_embarcadero_application_id`)) {
        headerParams['X-Embarcadero-Application-Id'] <- `x_embarcadero_application_id`
      }

      if (!missing(`x_embarcadero_app_secret`)) {
        headerParams['X-Embarcadero-App-Secret'] <- `x_embarcadero_app_secret`
      }

      if (!missing(`x_embarcadero_master_secret`)) {
        headerParams['X-Embarcadero-Master-Secret'] <- `x_embarcadero_master_secret`
      }

      urlPath <- "/api/{item}/apidoc.yaml"
      if (!missing(`item`)) {
        urlPath <- gsub(paste0("\\{", "item", "\\}"), `item`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)