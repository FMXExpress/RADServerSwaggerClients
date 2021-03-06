# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InstallationAddedObject Class
#'
#' @field _id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InstallationAddedObject <- R6::R6Class(
  'InstallationAddedObject',
  public = list(
    `_id` = NULL,
    initialize = function(`_id`){
      if (!missing(`_id`)) {
        stopifnot(is.character(`_id`), length(`_id`) == 1)
        self$`_id` <- `_id`
      }
    },
    toJSON = function() {
      InstallationAddedObjectObject <- list()
      if (!is.null(self$`_id`)) {
        InstallationAddedObjectObject[['_id']] <- self$`_id`
      }

      InstallationAddedObjectObject
    },
    fromJSON = function(InstallationAddedObjectJson) {
      InstallationAddedObjectObject <- jsonlite::fromJSON(InstallationAddedObjectJson)
      if (!is.null(InstallationAddedObjectObject$`_id`)) {
        self$`_id` <- InstallationAddedObjectObject$`_id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "_id": %s
        }',
        self$`_id`
      )
    },
    fromJSONString = function(InstallationAddedObjectJson) {
      InstallationAddedObjectObject <- jsonlite::fromJSON(InstallationAddedObjectJson)
      self$`_id` <- InstallationAddedObjectObject$`_id`
    }
  )
)
