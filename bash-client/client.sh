#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! swagger-codegen (https://github.com/swagger-api/swagger-codegen)
# ! FROM SWAGGER SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for EMS API Documentation.
#
# LICENSE:
# 
#
# CONTACT:
# 
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statemets
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["aPI:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["aPI:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["aPI:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getAPIJSONFormat:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getAPIJSONFormat:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getAPIJSONFormat:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getAPIYAMLFormat:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getAPIYAMLFormat:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getAPIYAMLFormat:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getAPIYAMLFormat EndPoint:::item"]=1
operation_parameters_minimum_occurrences["getAPIYAMLFormat EndPoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getAPIYAMLFormat EndPoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getAPIYAMLFormat EndPoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getModule:::mname"]=1
operation_parameters_minimum_occurrences["getModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getModuleResource:::mname"]=1
operation_parameters_minimum_occurrences["getModuleResource:::name"]=1
operation_parameters_minimum_occurrences["getModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getModuleResources:::mname"]=1
operation_parameters_minimum_occurrences["getModuleResources:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getModuleResources:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getModuleResources:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getModules:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getModules:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getModules:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getModulesFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getModulesFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getModulesFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getResources:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getResources:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getResources:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getResourcesFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getResourcesFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getResourcesFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["registerModule:::body"]=1
operation_parameters_minimum_occurrences["registerModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["registerModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["registerModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["registerModuleResource:::mname"]=1
operation_parameters_minimum_occurrences["registerModuleResource:::body"]=1
operation_parameters_minimum_occurrences["registerModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["registerModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["registerModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["unregisterModule:::mname"]=1
operation_parameters_minimum_occurrences["unregisterModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["unregisterModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["unregisterModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["unregisterModuleResource:::mname"]=1
operation_parameters_minimum_occurrences["unregisterModuleResource:::name"]=1
operation_parameters_minimum_occurrences["unregisterModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["unregisterModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["unregisterModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["updateModule:::mname"]=1
operation_parameters_minimum_occurrences["updateModule:::body"]=1
operation_parameters_minimum_occurrences["updateModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["updateModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["updateModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["updateModuleResource:::mname"]=1
operation_parameters_minimum_occurrences["updateModuleResource:::name"]=1
operation_parameters_minimum_occurrences["updateModuleResource:::body"]=1
operation_parameters_minimum_occurrences["updateModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["updateModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["updateModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["deleteResourceEndpoint:::mname"]=1
operation_parameters_minimum_occurrences["deleteResourceEndpoint:::rname"]=1
operation_parameters_minimum_occurrences["deleteResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["deleteResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["deleteResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["deleteResourceEndpointItem:::mname"]=1
operation_parameters_minimum_occurrences["deleteResourceEndpointItem:::rname"]=1
operation_parameters_minimum_occurrences["deleteResourceEndpointItem:::wildcard"]=1
operation_parameters_minimum_occurrences["deleteResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["deleteResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["deleteResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getResourceEndpoint:::mname"]=1
operation_parameters_minimum_occurrences["getResourceEndpoint:::rname"]=1
operation_parameters_minimum_occurrences["getResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getResourceEndpointItem:::mname"]=1
operation_parameters_minimum_occurrences["getResourceEndpointItem:::rname"]=1
operation_parameters_minimum_occurrences["getResourceEndpointItem:::wildcard"]=1
operation_parameters_minimum_occurrences["getResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["patchResourceEndpoint:::mname"]=1
operation_parameters_minimum_occurrences["patchResourceEndpoint:::rname"]=1
operation_parameters_minimum_occurrences["patchResourceEndpoint:::body"]=1
operation_parameters_minimum_occurrences["patchResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["patchResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["patchResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::mname"]=1
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::rname"]=1
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::wildcard"]=1
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::body"]=1
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["patchResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["postResourceEndpoint:::mname"]=1
operation_parameters_minimum_occurrences["postResourceEndpoint:::rname"]=1
operation_parameters_minimum_occurrences["postResourceEndpoint:::body"]=1
operation_parameters_minimum_occurrences["postResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["postResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["postResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["postResourceEndpointItem:::mname"]=1
operation_parameters_minimum_occurrences["postResourceEndpointItem:::rname"]=1
operation_parameters_minimum_occurrences["postResourceEndpointItem:::wildcard"]=1
operation_parameters_minimum_occurrences["postResourceEndpointItem:::body"]=1
operation_parameters_minimum_occurrences["postResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["postResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["postResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["putResourceEndpoint:::mname"]=1
operation_parameters_minimum_occurrences["putResourceEndpoint:::rname"]=1
operation_parameters_minimum_occurrences["putResourceEndpoint:::body"]=1
operation_parameters_minimum_occurrences["putResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["putResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["putResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["putResourceEndpointItem:::mname"]=1
operation_parameters_minimum_occurrences["putResourceEndpointItem:::rname"]=1
operation_parameters_minimum_occurrences["putResourceEndpointItem:::wildcard"]=1
operation_parameters_minimum_occurrences["putResourceEndpointItem:::body"]=1
operation_parameters_minimum_occurrences["putResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["putResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["putResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["addGroup:::body"]=1
operation_parameters_minimum_occurrences["addGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["addGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["addGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["deleteGroup:::item"]=1
operation_parameters_minimum_occurrences["deleteGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["deleteGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["deleteGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getGroup:::item"]=1
operation_parameters_minimum_occurrences["getGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getGroupFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getGroupFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getGroupFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getGroups:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getGroups:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getGroups:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getGroups:::skip"]=0
operation_parameters_minimum_occurrences["getGroups:::limit"]=0
operation_parameters_minimum_occurrences["getGroups:::order"]=0
operation_parameters_minimum_occurrences["getGroups:::where"]=0
operation_parameters_minimum_occurrences["updateGroup:::item"]=1
operation_parameters_minimum_occurrences["updateGroup:::body"]=1
operation_parameters_minimum_occurrences["updateGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["updateGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["updateGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["addInstallation:::body"]=1
operation_parameters_minimum_occurrences["addInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["addInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["addInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["deleteInstallation:::id"]=1
operation_parameters_minimum_occurrences["deleteInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["deleteInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["deleteInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getChannels:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getChannels:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getChannels:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getInstallation:::id"]=1
operation_parameters_minimum_occurrences["getInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getInstallationFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getInstallationFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getInstallationFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getInstallations:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getInstallations:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getInstallations:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getInstallations:::skip"]=0
operation_parameters_minimum_occurrences["getInstallations:::limit"]=0
operation_parameters_minimum_occurrences["getInstallations:::order"]=0
operation_parameters_minimum_occurrences["getInstallations:::where"]=0
operation_parameters_minimum_occurrences["updateInstallation:::id"]=1
operation_parameters_minimum_occurrences["updateInstallation:::body"]=1
operation_parameters_minimum_occurrences["updateInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["updateInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["updateInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["send:::body"]=1
operation_parameters_minimum_occurrences["send:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["send:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["send:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["addUser:::body"]=1
operation_parameters_minimum_occurrences["addUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["addUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["addUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["deleteUser:::id"]=1
operation_parameters_minimum_occurrences["deleteUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["deleteUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["deleteUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getUser:::id"]=1
operation_parameters_minimum_occurrences["getUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getUserFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getUserFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getUserFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getUserGroups:::id"]=1
operation_parameters_minimum_occurrences["getUserGroups:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getUserGroups:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getUserGroups:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getUsers:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getUsers:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getUsers:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getUsers:::skip"]=0
operation_parameters_minimum_occurrences["getUsers:::limit"]=0
operation_parameters_minimum_occurrences["getUsers:::order"]=0
operation_parameters_minimum_occurrences["getUsers:::where"]=0
operation_parameters_minimum_occurrences["loginUser:::body"]=1
operation_parameters_minimum_occurrences["loginUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["loginUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["loginUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["logoutUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["logoutUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["logoutUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["signupUser:::body"]=1
operation_parameters_minimum_occurrences["signupUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["signupUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["signupUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["updateUser:::id"]=1
operation_parameters_minimum_occurrences["updateUser:::body"]=1
operation_parameters_minimum_occurrences["updateUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["updateUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["updateUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_minimum_occurrences["getVersion:::X-Embarcadero-Application-Id"]=0
operation_parameters_minimum_occurrences["getVersion:::X-Embarcadero-App-Secret"]=0
operation_parameters_minimum_occurrences["getVersion:::X-Embarcadero-Master-Secret"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["aPI:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["aPI:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["aPI:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getAPIJSONFormat:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getAPIJSONFormat:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getAPIJSONFormat:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat EndPoint:::item"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat EndPoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat EndPoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getAPIYAMLFormat EndPoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getModule:::mname"]=0
operation_parameters_maximum_occurrences["getModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getModuleResource:::mname"]=0
operation_parameters_maximum_occurrences["getModuleResource:::name"]=0
operation_parameters_maximum_occurrences["getModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getModuleResources:::mname"]=0
operation_parameters_maximum_occurrences["getModuleResources:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getModuleResources:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getModuleResources:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getModules:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getModules:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getModules:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getModulesFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getModulesFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getModulesFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getResources:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getResources:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getResources:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getResourcesFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getResourcesFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getResourcesFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["registerModule:::body"]=0
operation_parameters_maximum_occurrences["registerModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["registerModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["registerModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["registerModuleResource:::mname"]=0
operation_parameters_maximum_occurrences["registerModuleResource:::body"]=0
operation_parameters_maximum_occurrences["registerModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["registerModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["registerModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["unregisterModule:::mname"]=0
operation_parameters_maximum_occurrences["unregisterModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["unregisterModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["unregisterModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["unregisterModuleResource:::mname"]=0
operation_parameters_maximum_occurrences["unregisterModuleResource:::name"]=0
operation_parameters_maximum_occurrences["unregisterModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["unregisterModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["unregisterModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["updateModule:::mname"]=0
operation_parameters_maximum_occurrences["updateModule:::body"]=0
operation_parameters_maximum_occurrences["updateModule:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["updateModule:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["updateModule:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["updateModuleResource:::mname"]=0
operation_parameters_maximum_occurrences["updateModuleResource:::name"]=0
operation_parameters_maximum_occurrences["updateModuleResource:::body"]=0
operation_parameters_maximum_occurrences["updateModuleResource:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["updateModuleResource:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["updateModuleResource:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpoint:::mname"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpoint:::rname"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpointItem:::mname"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpointItem:::rname"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpointItem:::wildcard"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["deleteResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getResourceEndpoint:::mname"]=0
operation_parameters_maximum_occurrences["getResourceEndpoint:::rname"]=0
operation_parameters_maximum_occurrences["getResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getResourceEndpointItem:::mname"]=0
operation_parameters_maximum_occurrences["getResourceEndpointItem:::rname"]=0
operation_parameters_maximum_occurrences["getResourceEndpointItem:::wildcard"]=0
operation_parameters_maximum_occurrences["getResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["patchResourceEndpoint:::mname"]=0
operation_parameters_maximum_occurrences["patchResourceEndpoint:::rname"]=0
operation_parameters_maximum_occurrences["patchResourceEndpoint:::body"]=0
operation_parameters_maximum_occurrences["patchResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["patchResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["patchResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::mname"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::rname"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::wildcard"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::body"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["patchResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["postResourceEndpoint:::mname"]=0
operation_parameters_maximum_occurrences["postResourceEndpoint:::rname"]=0
operation_parameters_maximum_occurrences["postResourceEndpoint:::body"]=0
operation_parameters_maximum_occurrences["postResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["postResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["postResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::mname"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::rname"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::wildcard"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::body"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["postResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["putResourceEndpoint:::mname"]=0
operation_parameters_maximum_occurrences["putResourceEndpoint:::rname"]=0
operation_parameters_maximum_occurrences["putResourceEndpoint:::body"]=0
operation_parameters_maximum_occurrences["putResourceEndpoint:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["putResourceEndpoint:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["putResourceEndpoint:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::mname"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::rname"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::wildcard"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::body"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["putResourceEndpointItem:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["addGroup:::body"]=0
operation_parameters_maximum_occurrences["addGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["addGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["addGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["deleteGroup:::item"]=0
operation_parameters_maximum_occurrences["deleteGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["deleteGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["deleteGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getGroup:::item"]=0
operation_parameters_maximum_occurrences["getGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getGroupFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getGroupFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getGroupFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getGroups:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getGroups:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getGroups:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getGroups:::skip"]=0
operation_parameters_maximum_occurrences["getGroups:::limit"]=0
operation_parameters_maximum_occurrences["getGroups:::order"]=0
operation_parameters_maximum_occurrences["getGroups:::where"]=0
operation_parameters_maximum_occurrences["updateGroup:::item"]=0
operation_parameters_maximum_occurrences["updateGroup:::body"]=0
operation_parameters_maximum_occurrences["updateGroup:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["updateGroup:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["updateGroup:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["addInstallation:::body"]=0
operation_parameters_maximum_occurrences["addInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["addInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["addInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["deleteInstallation:::id"]=0
operation_parameters_maximum_occurrences["deleteInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["deleteInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["deleteInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getChannels:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getChannels:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getChannels:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getInstallation:::id"]=0
operation_parameters_maximum_occurrences["getInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getInstallationFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getInstallationFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getInstallationFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getInstallations:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getInstallations:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getInstallations:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getInstallations:::skip"]=0
operation_parameters_maximum_occurrences["getInstallations:::limit"]=0
operation_parameters_maximum_occurrences["getInstallations:::order"]=0
operation_parameters_maximum_occurrences["getInstallations:::where"]=0
operation_parameters_maximum_occurrences["updateInstallation:::id"]=0
operation_parameters_maximum_occurrences["updateInstallation:::body"]=0
operation_parameters_maximum_occurrences["updateInstallation:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["updateInstallation:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["updateInstallation:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["send:::body"]=0
operation_parameters_maximum_occurrences["send:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["send:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["send:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["addUser:::body"]=0
operation_parameters_maximum_occurrences["addUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["addUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["addUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["deleteUser:::id"]=0
operation_parameters_maximum_occurrences["deleteUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["deleteUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["deleteUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getUser:::id"]=0
operation_parameters_maximum_occurrences["getUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getUserFields:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getUserFields:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getUserFields:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getUserGroups:::id"]=0
operation_parameters_maximum_occurrences["getUserGroups:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getUserGroups:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getUserGroups:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getUsers:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getUsers:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getUsers:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getUsers:::skip"]=0
operation_parameters_maximum_occurrences["getUsers:::limit"]=0
operation_parameters_maximum_occurrences["getUsers:::order"]=0
operation_parameters_maximum_occurrences["getUsers:::where"]=0
operation_parameters_maximum_occurrences["loginUser:::body"]=0
operation_parameters_maximum_occurrences["loginUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["loginUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["loginUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["logoutUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["logoutUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["logoutUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["signupUser:::body"]=0
operation_parameters_maximum_occurrences["signupUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["signupUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["signupUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["updateUser:::id"]=0
operation_parameters_maximum_occurrences["updateUser:::body"]=0
operation_parameters_maximum_occurrences["updateUser:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["updateUser:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["updateUser:::X-Embarcadero-Master-Secret"]=0
operation_parameters_maximum_occurrences["getVersion:::X-Embarcadero-Application-Id"]=0
operation_parameters_maximum_occurrences["getVersion:::X-Embarcadero-App-Secret"]=0
operation_parameters_maximum_occurrences["getVersion:::X-Embarcadero-Master-Secret"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["aPI:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["aPI:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["aPI:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getAPIJSONFormat:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getAPIJSONFormat:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getAPIJSONFormat:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getAPIYAMLFormat:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getAPIYAMLFormat:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getAPIYAMLFormat:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getAPIYAMLFormat EndPoint:::item"]=""
operation_parameters_collection_type["getAPIYAMLFormat EndPoint:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getAPIYAMLFormat EndPoint:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getAPIYAMLFormat EndPoint:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getModule:::mname"]=""
operation_parameters_collection_type["getModule:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getModule:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getModule:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getModuleResource:::mname"]=""
operation_parameters_collection_type["getModuleResource:::name"]=""
operation_parameters_collection_type["getModuleResource:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getModuleResource:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getModuleResource:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getModuleResources:::mname"]=""
operation_parameters_collection_type["getModuleResources:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getModuleResources:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getModuleResources:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getModules:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getModules:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getModules:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getModulesFields:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getModulesFields:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getModulesFields:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getResources:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getResources:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getResources:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getResourcesFields:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getResourcesFields:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getResourcesFields:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["registerModule:::body"]=""
operation_parameters_collection_type["registerModule:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["registerModule:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["registerModule:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["registerModuleResource:::mname"]=""
operation_parameters_collection_type["registerModuleResource:::body"]=""
operation_parameters_collection_type["registerModuleResource:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["registerModuleResource:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["registerModuleResource:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["unregisterModule:::mname"]=""
operation_parameters_collection_type["unregisterModule:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["unregisterModule:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["unregisterModule:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["unregisterModuleResource:::mname"]=""
operation_parameters_collection_type["unregisterModuleResource:::name"]=""
operation_parameters_collection_type["unregisterModuleResource:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["unregisterModuleResource:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["unregisterModuleResource:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["updateModule:::mname"]=""
operation_parameters_collection_type["updateModule:::body"]=""
operation_parameters_collection_type["updateModule:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["updateModule:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["updateModule:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["updateModuleResource:::mname"]=""
operation_parameters_collection_type["updateModuleResource:::name"]=""
operation_parameters_collection_type["updateModuleResource:::body"]=""
operation_parameters_collection_type["updateModuleResource:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["updateModuleResource:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["updateModuleResource:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["deleteResourceEndpoint:::mname"]=""
operation_parameters_collection_type["deleteResourceEndpoint:::rname"]=""
operation_parameters_collection_type["deleteResourceEndpoint:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["deleteResourceEndpoint:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["deleteResourceEndpoint:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["deleteResourceEndpointItem:::mname"]=""
operation_parameters_collection_type["deleteResourceEndpointItem:::rname"]=""
operation_parameters_collection_type["deleteResourceEndpointItem:::wildcard"]=""
operation_parameters_collection_type["deleteResourceEndpointItem:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["deleteResourceEndpointItem:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["deleteResourceEndpointItem:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getResourceEndpoint:::mname"]=""
operation_parameters_collection_type["getResourceEndpoint:::rname"]=""
operation_parameters_collection_type["getResourceEndpoint:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getResourceEndpoint:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getResourceEndpoint:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getResourceEndpointItem:::mname"]=""
operation_parameters_collection_type["getResourceEndpointItem:::rname"]=""
operation_parameters_collection_type["getResourceEndpointItem:::wildcard"]=""
operation_parameters_collection_type["getResourceEndpointItem:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getResourceEndpointItem:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getResourceEndpointItem:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["patchResourceEndpoint:::mname"]=""
operation_parameters_collection_type["patchResourceEndpoint:::rname"]=""
operation_parameters_collection_type["patchResourceEndpoint:::body"]=""
operation_parameters_collection_type["patchResourceEndpoint:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["patchResourceEndpoint:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["patchResourceEndpoint:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::mname"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::rname"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::wildcard"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::body"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["patchResourceEndpointItem:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["postResourceEndpoint:::mname"]=""
operation_parameters_collection_type["postResourceEndpoint:::rname"]=""
operation_parameters_collection_type["postResourceEndpoint:::body"]=""
operation_parameters_collection_type["postResourceEndpoint:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["postResourceEndpoint:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["postResourceEndpoint:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["postResourceEndpointItem:::mname"]=""
operation_parameters_collection_type["postResourceEndpointItem:::rname"]=""
operation_parameters_collection_type["postResourceEndpointItem:::wildcard"]=""
operation_parameters_collection_type["postResourceEndpointItem:::body"]=""
operation_parameters_collection_type["postResourceEndpointItem:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["postResourceEndpointItem:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["postResourceEndpointItem:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["putResourceEndpoint:::mname"]=""
operation_parameters_collection_type["putResourceEndpoint:::rname"]=""
operation_parameters_collection_type["putResourceEndpoint:::body"]=""
operation_parameters_collection_type["putResourceEndpoint:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["putResourceEndpoint:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["putResourceEndpoint:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["putResourceEndpointItem:::mname"]=""
operation_parameters_collection_type["putResourceEndpointItem:::rname"]=""
operation_parameters_collection_type["putResourceEndpointItem:::wildcard"]=""
operation_parameters_collection_type["putResourceEndpointItem:::body"]=""
operation_parameters_collection_type["putResourceEndpointItem:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["putResourceEndpointItem:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["putResourceEndpointItem:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["addGroup:::body"]=""
operation_parameters_collection_type["addGroup:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["addGroup:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["addGroup:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["deleteGroup:::item"]=""
operation_parameters_collection_type["deleteGroup:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["deleteGroup:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["deleteGroup:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getGroup:::item"]=""
operation_parameters_collection_type["getGroup:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getGroup:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getGroup:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getGroupFields:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getGroupFields:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getGroupFields:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getGroups:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getGroups:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getGroups:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getGroups:::skip"]=""
operation_parameters_collection_type["getGroups:::limit"]=""
operation_parameters_collection_type["getGroups:::order"]=""
operation_parameters_collection_type["getGroups:::where"]=""
operation_parameters_collection_type["updateGroup:::item"]=""
operation_parameters_collection_type["updateGroup:::body"]=""
operation_parameters_collection_type["updateGroup:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["updateGroup:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["updateGroup:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["addInstallation:::body"]=""
operation_parameters_collection_type["addInstallation:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["addInstallation:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["addInstallation:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["deleteInstallation:::id"]=""
operation_parameters_collection_type["deleteInstallation:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["deleteInstallation:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["deleteInstallation:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getChannels:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getChannels:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getChannels:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getInstallation:::id"]=""
operation_parameters_collection_type["getInstallation:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getInstallation:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getInstallation:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getInstallationFields:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getInstallationFields:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getInstallationFields:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getInstallations:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getInstallations:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getInstallations:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getInstallations:::skip"]=""
operation_parameters_collection_type["getInstallations:::limit"]=""
operation_parameters_collection_type["getInstallations:::order"]=""
operation_parameters_collection_type["getInstallations:::where"]=""
operation_parameters_collection_type["updateInstallation:::id"]=""
operation_parameters_collection_type["updateInstallation:::body"]=""
operation_parameters_collection_type["updateInstallation:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["updateInstallation:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["updateInstallation:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["send:::body"]=""
operation_parameters_collection_type["send:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["send:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["send:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["addUser:::body"]=""
operation_parameters_collection_type["addUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["addUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["addUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["deleteUser:::id"]=""
operation_parameters_collection_type["deleteUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["deleteUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["deleteUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getUser:::id"]=""
operation_parameters_collection_type["getUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getUserFields:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getUserFields:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getUserFields:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getUserGroups:::id"]=""
operation_parameters_collection_type["getUserGroups:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getUserGroups:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getUserGroups:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getUsers:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getUsers:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getUsers:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getUsers:::skip"]=""
operation_parameters_collection_type["getUsers:::limit"]=""
operation_parameters_collection_type["getUsers:::order"]=""
operation_parameters_collection_type["getUsers:::where"]=""
operation_parameters_collection_type["loginUser:::body"]=""
operation_parameters_collection_type["loginUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["loginUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["loginUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["logoutUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["logoutUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["logoutUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["signupUser:::body"]=""
operation_parameters_collection_type["signupUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["signupUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["signupUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["updateUser:::id"]=""
operation_parameters_collection_type["updateUser:::body"]=""
operation_parameters_collection_type["updateUser:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["updateUser:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["updateUser:::X-Embarcadero-Master-Secret"]=""
operation_parameters_collection_type["getVersion:::X-Embarcadero-Application-Id"]=""
operation_parameters_collection_type["getVersion:::X-Embarcadero-App-Secret"]=""
operation_parameters_collection_type["getVersion:::X-Embarcadero-Master-Secret"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

        if [[ -n "${parameter_values[*]}" ]]; then
            if [[ $((count++)) -gt 0 ]]; then
                query_request_part+="&"
            fi
        fi


        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}EMS API Documentation command line client (API version 0.0.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[apiDoc]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}aPI${OFF};Get API EndPoints
  ${CYAN}getAPIJSONFormat${OFF};Get JSON
  ${CYAN}getAPIYAMLFormat${OFF};Get YAML
  ${CYAN}getAPIYAMLFormat EndPoint${OFF};Get API EndPoint
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[edgeModules]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getModule${OFF};Get Module
  ${CYAN}getModuleResource${OFF};Get EdgeModule Resource
  ${CYAN}getModuleResources${OFF};Get EdgeModule Resources
  ${CYAN}getModules${OFF};Get Module
  ${CYAN}getModulesFields${OFF};Get Fields
  ${CYAN}getResources${OFF};Get EdgeModules Resources
  ${CYAN}getResourcesFields${OFF};Get Resource Fields
  ${CYAN}registerModule${OFF};Add Module
  ${CYAN}registerModuleResource${OFF};Add Module Resource
  ${CYAN}unregisterModule${OFF};Delete Module
  ${CYAN}unregisterModuleResource${OFF};Delete Module Resource
  ${CYAN}updateModule${OFF};Update Module
  ${CYAN}updateModuleResource${OFF};Update Module Resource
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[edgeModulesInvokers]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}deleteResourceEndpoint${OFF};Invoke Resource Delete Method
  ${CYAN}deleteResourceEndpointItem${OFF};Invoke Resource/* Delete Method
  ${CYAN}getResourceEndpoint${OFF};Invoke Resource Get Method
  ${CYAN}getResourceEndpointItem${OFF};Invoke Resource/* Get Method
  ${CYAN}patchResourceEndpoint${OFF};Invoke Resource Patch Method
  ${CYAN}patchResourceEndpointItem${OFF};Invoke Resource/* Patch Method
  ${CYAN}postResourceEndpoint${OFF};Invoke Resource Post Method
  ${CYAN}postResourceEndpointItem${OFF};Invoke Resource/* Post Method
  ${CYAN}putResourceEndpoint${OFF};Invoke Resource Put Method
  ${CYAN}putResourceEndpointItem${OFF};Invoke Resource/* Put Method
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[groups]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}addGroup${OFF};Add Group
  ${CYAN}deleteGroup${OFF};Delete Group
  ${CYAN}getGroup${OFF};Get Group
  ${CYAN}getGroupFields${OFF};Get Fields
  ${CYAN}getGroups${OFF};Get Groups
  ${CYAN}updateGroup${OFF};Update Group
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[installations]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}addInstallation${OFF};Add Installation
  ${CYAN}deleteInstallation${OFF};Delete Installation
  ${CYAN}getChannels${OFF};Get Installation Channels
  ${CYAN}getInstallation${OFF};Get Installation
  ${CYAN}getInstallationFields${OFF};Get Fields
  ${CYAN}getInstallations${OFF};Get Installations
  ${CYAN}updateInstallation${OFF};Update Installation
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[push]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}send${OFF};Send Push
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[users]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}addUser${OFF};Add User
  ${CYAN}deleteUser${OFF};Delete User
  ${CYAN}getUser${OFF};Get User
  ${CYAN}getUserFields${OFF};Get Fields
  ${CYAN}getUserGroups${OFF};Get User Groups
  ${CYAN}getUsers${OFF};Get Users
  ${CYAN}loginUser${OFF};Log In
  ${CYAN}logoutUser${OFF};sPostLogoutSummaryTitle
  ${CYAN}signupUser${OFF};Sign Up  User
  ${CYAN}updateUser${OFF};Update User
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[version]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getVersion${OFF};Get version
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://localhost:8080')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}EMS API Documentation command line client (API version 0.0.0)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: "
    echo ""
read -r -d '' appdescription <<EOF

Enterprise Mobility Services API

  [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)

  EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)

  TurnKey Middleware for Interconnected Distributed Apps
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}EMS API Documentation command line client (API version 0.0.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for aPI operation
#
##############################################################################
print_aPI_help() {
    echo ""
    echo -e "${BOLD}${WHITE}aPI - Get API EndPoints${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all the API EndPoints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAPIJSONFormat operation
#
##############################################################################
print_getAPIJSONFormat_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAPIJSONFormat - Get JSON${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get API in JSON format" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAPIYAMLFormat operation
#
##############################################################################
print_getAPIYAMLFormat_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAPIYAMLFormat - Get YAML${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get API in YAML format" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAPIYAMLFormat EndPoint operation
#
##############################################################################
print_getAPIYAMLFormat EndPoint_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAPIYAMLFormat EndPoint - Get API EndPoint${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve an EndPoint for the API EndPoints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}item${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Path Segment to an EndPoint ${YELLOW}Specify as: item=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getModule operation
#
##############################################################################
print_getModule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getModule - Get Module${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from 'EdgeModule'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getModuleResource operation
#
##############################################################################
print_getModuleResource_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getModuleResource - Get EdgeModule Resource${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getModuleResources operation
#
##############################################################################
print_getModuleResources_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getModuleResources - Get EdgeModule Resources${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from the resources of an EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getModules operation
#
##############################################################################
print_getModules_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getModules - Get Module${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from 'EdgeModule'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getModulesFields operation
#
##############################################################################
print_getModulesFields_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getModulesFields - Get Fields${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all the 'field names' of the EMS EdgeModule (including the custom fields)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getResources operation
#
##############################################################################
print_getResources_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getResources - Get EdgeModules Resources${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from the resources of all EdgeModules." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getResourcesFields operation
#
##############################################################################
print_getResourcesFields_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getResourcesFields - Get Resource Fields${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve the 'field names' of all the resources of the EMS EdgeModule (including the custom fields)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for registerModule operation
#
##############################################################################
print_registerModule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}registerModule - Add Module${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to add a new 'EdgeModule' object to the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - EdgeModule object to add. protocolprops example string {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Unexpexted Request Body${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=409
    echo -e "${result_color_table[${code:0:1}]}  409;Module already exist${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for registerModuleResource operation
#
##############################################################################
print_registerModuleResource_help() {
    echo ""
    echo -e "${BOLD}${WHITE}registerModuleResource - Add Module Resource${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for unregisterModule operation
#
##############################################################################
print_unregisterModule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}unregisterModule - Delete Module${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to delete an 'EdgeModule Resource'. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for unregisterModuleResource operation
#
##############################################################################
print_unregisterModuleResource_help() {
    echo ""
    echo -e "${BOLD}${WHITE}unregisterModuleResource - Delete Module Resource${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to delete an 'EdgeModule Resource'. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateModule operation
#
##############################################################################
print_updateModule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateModule - Update Module${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to update an 'EdgeModule'. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateModuleResource operation
#
##############################################################################
print_updateModuleResource_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateModuleResource - Update Module Resource${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to update an 'EdgeModule'. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule identifier ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - EdgModule Resource add object. protocolprops string example {\\\"port\\\":8082,\\\"host\\\":\\\"10.150.40.52\\\"}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteResourceEndpoint operation
#
##############################################################################
print_deleteResourceEndpoint_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteResourceEndpoint - Invoke Resource Delete Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the DELETE method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteResourceEndpointItem operation
#
##############################################################################
print_deleteResourceEndpointItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteResourceEndpointItem - Invoke Resource/* Delete Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the DELETE method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wildcard${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the Wild card part of the URL ${YELLOW}Specify as: wildcard=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getResourceEndpoint operation
#
##############################################################################
print_getResourceEndpoint_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getResourceEndpoint - Invoke Resource Get Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the GET method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getResourceEndpointItem operation
#
##############################################################################
print_getResourceEndpointItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getResourceEndpointItem - Invoke Resource/* Get Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the GET method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wildcard${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the Wild card part of the URL ${YELLOW}Specify as: wildcard=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for patchResourceEndpoint operation
#
##############################################################################
print_patchResourceEndpoint_help() {
    echo ""
    echo -e "${BOLD}${WHITE}patchResourceEndpoint - Invoke Resource Patch Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the PATCH method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Body Object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for patchResourceEndpointItem operation
#
##############################################################################
print_patchResourceEndpointItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}patchResourceEndpointItem - Invoke Resource/* Patch Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the PATCH method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wildcard${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the Wild card part of the URL ${YELLOW}Specify as: wildcard=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Body Object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postResourceEndpoint operation
#
##############################################################################
print_postResourceEndpoint_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postResourceEndpoint - Invoke Resource Post Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the POST method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Body Object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for postResourceEndpointItem operation
#
##############################################################################
print_postResourceEndpointItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}postResourceEndpointItem - Invoke Resource/* Post Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the POST method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wildcard${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the Wild card part of the URL ${YELLOW}Specify as: wildcard=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Body Object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for putResourceEndpoint operation
#
##############################################################################
print_putResourceEndpoint_help() {
    echo ""
    echo -e "${BOLD}${WHITE}putResourceEndpoint - Invoke Resource Put Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the PUT method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Body Object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for putResourceEndpointItem operation
#
##############################################################################
print_putResourceEndpointItem_help() {
    echo ""
    echo -e "${BOLD}${WHITE}putResourceEndpointItem - Invoke Resource/* Put Method${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to invoke the PUT method of the resource from an existing EMS EdgeModule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}mname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the EMS EdgeModule name ${YELLOW}Specify as: mname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}rname${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the unique EMS EdgeModule Resource name ${YELLOW}Specify as: rname=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wildcard${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - Is the Wild card part of the URL ${YELLOW}Specify as: wildcard=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Body Object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for addGroup operation
#
##############################################################################
print_addGroup_help() {
    echo ""
    echo -e "${BOLD}${WHITE}addGroup - Add Group${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to add a new 'Group' object to the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Object to sign up a new EMS User in the EMS Server" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Group already exist${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteGroup operation
#
##############################################################################
print_deleteGroup_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteGroup - Delete Group${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to delete a 'Group'. **item** is the unique EMS Group name in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}item${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A group name ${YELLOW}Specify as: item=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Group not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getGroup operation
#
##############################################################################
print_getGroup_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getGroup - Get Group${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from a 'Group'. **item** is the unique EMS Group name in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}item${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A group name ${YELLOW}Specify as: item=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getGroupFields operation
#
##############################################################################
print_getGroupFields_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getGroupFields - Get Fields${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all the 'field names' of the EMS Group (including the custom fields)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getGroups operation
#
##############################################################################
print_getGroups_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getGroups - Get Groups${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from 'Groups'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}skip${OFF} ${BLUE}[integer]${OFF}${OFF} - users skipped${YELLOW} Specify as: skip=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF}${OFF} - maximum number of results to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}order${OFF} ${BLUE}[integer]${OFF}${OFF} - order ascending or descending (asc, desc)${YELLOW} Specify as: order=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}where${OFF} ${BLUE}[string]${OFF}${OFF} - filter operators (lt, lte, gt, gte, eq, neq, like, nlike)${YELLOW} Specify as: where=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateGroup operation
#
##############################################################################
print_updateGroup_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateGroup - Update Group${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to update a 'Group'. **item** is the unique EMS Group name in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}item${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A group name ${YELLOW}Specify as: item=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Object to sign up a new EMS User in the EMS Server" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Group not found / User not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for addInstallation operation
#
##############################################################################
print_addInstallation_help() {
    echo ""
    echo -e "${BOLD}${WHITE}addInstallation - Add Installation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to add a new 'Installation' object to the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Object to sign up a new EMS User in the EMS Server" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Installation already exists${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteInstallation operation
#
##############################################################################
print_deleteInstallation_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteInstallation - Delete Installation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to delete an 'Installation'. **id** is the unique EMS Installation identifier (IID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A Installation ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getChannels operation
#
##############################################################################
print_getChannels_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getChannels - Get Installation Channels${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
     Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getInstallation operation
#
##############################################################################
print_getInstallation_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getInstallation - Get Installation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from a specific 'Installation' (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A Installation ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Group not found / User not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getInstallationFields operation
#
##############################################################################
print_getInstallationFields_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getInstallationFields - Get Fields${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all the 'field names' of the EMS Installation (including the custom fields)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getInstallations operation
#
##############################################################################
print_getInstallations_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getInstallations - Get Installations${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from 'Installation'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}skip${OFF} ${BLUE}[integer]${OFF}${OFF} - users skipped${YELLOW} Specify as: skip=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF}${OFF} - maximum number of results to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}order${OFF} ${BLUE}[integer]${OFF}${OFF} - order ascending or descending (asc, desc)${YELLOW} Specify as: order=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}where${OFF} ${BLUE}[string]${OFF}${OFF} - filter operators (lt, lte, gt, gte, eq, neq, like, nlike)${YELLOW} Specify as: where=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateInstallation operation
#
##############################################################################
print_updateInstallation_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateInstallation - Update Installation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to update an 'Installation'. **id** is the unique EMS Installation identifier (IID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A Installation ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Installation fields to update" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for send operation
#
##############################################################################
print_send_help() {
    echo ""
    echo -e "${BOLD}${WHITE}send - Send Push${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Used to send a push notification message to a registered device" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Object containing the Push Message data structure" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for addUser operation
#
##############################################################################
print_addUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}addUser - Add User${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to add a new 'User' object to the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Object to add a new EMS User in the EMS Server" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;User Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=409
    echo -e "${result_color_table[${code:0:1}]}  409;User already exists${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteUser operation
#
##############################################################################
print_deleteUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteUser - Delete User${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to delete a 'User'. **id** is the unique EMS User identifier (UID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A user ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;The request does not identify a known application, resource, endpoint, or entity${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUser operation
#
##############################################################################
print_getUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUser - Get User${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from a 'User'. **id** is the unique EMS User identifier (UID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A user ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUserFields operation
#
##############################################################################
print_getUserFields_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUserFields - Get Fields${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all the 'field names' of the EMS Users (including the custom fields)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUserGroups operation
#
##############################################################################
print_getUserGroups_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUserGroups - Get User Groups${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A user ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getUsers operation
#
##############################################################################
print_getUsers_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUsers - Get Users${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve all data from 'Users'.
    Optional query param of **skip, limit, order, where** determines 
    size of returned array, filtered and order by." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}skip${OFF} ${BLUE}[integer]${OFF}${OFF} - users skipped${YELLOW} Specify as: skip=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF}${OFF} - maximum number of results to return${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}order${OFF} ${BLUE}[integer]${OFF}${OFF} - order ascending or descending (asc, desc)${YELLOW} Specify as: order=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}where${OFF} ${BLUE}[string]${OFF}${OFF} - filter operators (lt, lte, gt, gte, eq, neq, like, nlike)${YELLOW} Specify as: where=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for loginUser operation
#
##############################################################################
print_loginUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}loginUser - Log In${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Logs in to the EMS Server with a specific EMS User." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - A user object" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;The credentials of the request are not authorized for the requested operation.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;User not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for logoutUser operation
#
##############################################################################
print_logoutUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}logoutUser - sPostLogoutSummaryTitle${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "sPostLogoutSummaryDesc" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;User not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for signupUser operation
#
##############################################################################
print_signupUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}signupUser - Sign Up  User${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Signs up to the EMS Server with an appropriate EMS User." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Object to sign up a new EMS User in the EMS Server" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=409
    echo -e "${result_color_table[${code:0:1}]}  409;User already exists${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateUser operation
#
##############################################################################
print_updateUser_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateUser - Update User${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to update a 'User'. **id** is the unique EMS User identifier (UID) in the EMS database." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} - A user ID ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - Add any fieldName" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Operation could not be completed because one or more dynamic names conflicts with a static name.${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getVersion operation
#
##############################################################################
print_getVersion_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getVersion - Get version${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "|
    Used to retrieve the 'Version' of the EMS Server." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Embarcadero-Application-Id${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Application-Id:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-App-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-App-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Embarcadero-Master-Secret${OFF} ${BLUE}[string]${OFF}${OFF} -  ${YELLOW}Specify as: X-Embarcadero-Master-Secret:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Ok. Provides the current version of the EMS Server${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call aPI operation
#
##############################################################################
call_aPI() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAPIJSONFormat operation
#
##############################################################################
call_getAPIJSONFormat() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/apidoc.json" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAPIYAMLFormat operation
#
##############################################################################
call_getAPIYAMLFormat() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/apidoc.yaml" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAPIYAMLFormat EndPoint operation
#
##############################################################################
call_getAPIYAMLFormat EndPoint() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(item)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/{item}/apidoc.yaml" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getModule operation
#
##############################################################################
call_getModule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getModuleResource operation
#
##############################################################################
call_getModuleResource() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname name)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/resources/{name}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getModuleResources operation
#
##############################################################################
call_getModuleResources() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/resources" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getModules operation
#
##############################################################################
call_getModules() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getModulesFields operation
#
##############################################################################
call_getModulesFields() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getResources operation
#
##############################################################################
call_getResources() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/resources" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getResourcesFields operation
#
##############################################################################
call_getResourcesFields() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/resources/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call registerModule operation
#
##############################################################################
call_registerModule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call registerModuleResource operation
#
##############################################################################
call_registerModuleResource() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/resources" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call unregisterModule operation
#
##############################################################################
call_unregisterModule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call unregisterModuleResource operation
#
##############################################################################
call_unregisterModuleResource() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname name)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/resources/{name}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateModule operation
#
##############################################################################
call_updateModule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateModuleResource operation
#
##############################################################################
call_updateModuleResource() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname name)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/resources/{name}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteResourceEndpoint operation
#
##############################################################################
call_deleteResourceEndpoint() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteResourceEndpointItem operation
#
##############################################################################
call_deleteResourceEndpointItem() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname wildcard)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}/{wildcard}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getResourceEndpoint operation
#
##############################################################################
call_getResourceEndpoint() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getResourceEndpointItem operation
#
##############################################################################
call_getResourceEndpointItem() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname wildcard)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}/{wildcard}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call patchResourceEndpoint operation
#
##############################################################################
call_patchResourceEndpoint() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call patchResourceEndpointItem operation
#
##############################################################################
call_patchResourceEndpointItem() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname wildcard)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}/{wildcard}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call postResourceEndpoint operation
#
##############################################################################
call_postResourceEndpoint() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call postResourceEndpointItem operation
#
##############################################################################
call_postResourceEndpointItem() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname wildcard)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}/{wildcard}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call putResourceEndpoint operation
#
##############################################################################
call_putResourceEndpoint() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call putResourceEndpointItem operation
#
##############################################################################
call_putResourceEndpointItem() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(mname rname wildcard)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/edgemodules/{mname}/{rname}/{wildcard}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call addGroup operation
#
##############################################################################
call_addGroup() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/groups" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteGroup operation
#
##############################################################################
call_deleteGroup() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(item)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/groups/{item}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getGroup operation
#
##############################################################################
call_getGroup() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(item)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/groups/{item}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getGroupFields operation
#
##############################################################################
call_getGroupFields() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/groups/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getGroups operation
#
##############################################################################
call_getGroups() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(skip limit order where)
    local path

    if ! path=$(build_request_path "/groups" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateGroup operation
#
##############################################################################
call_updateGroup() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(item)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/groups/{item}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call addInstallation operation
#
##############################################################################
call_addInstallation() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/installations" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteInstallation operation
#
##############################################################################
call_deleteInstallation() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/installations/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getChannels operation
#
##############################################################################
call_getChannels() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/installations/channels" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getInstallation operation
#
##############################################################################
call_getInstallation() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/installations/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getInstallationFields operation
#
##############################################################################
call_getInstallationFields() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/installations/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getInstallations operation
#
##############################################################################
call_getInstallations() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(skip limit order where)
    local path

    if ! path=$(build_request_path "/installations" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateInstallation operation
#
##############################################################################
call_updateInstallation() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/installations/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call send operation
#
##############################################################################
call_send() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/push" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call addUser operation
#
##############################################################################
call_addUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteUser operation
#
##############################################################################
call_deleteUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUser operation
#
##############################################################################
call_getUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUserFields operation
#
##############################################################################
call_getUserFields() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUserGroups operation
#
##############################################################################
call_getUserGroups() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/{id}/groups" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUsers operation
#
##############################################################################
call_getUsers() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(skip limit order where)
    local path

    if ! path=$(build_request_path "/users" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call loginUser operation
#
##############################################################################
call_loginUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/login" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call logoutUser operation
#
##############################################################################
call_logoutUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/logout" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call signupUser operation
#
##############################################################################
call_signupUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/signup" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateUser operation
#
##############################################################################
call_updateUser() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/users/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getVersion operation
#
##############################################################################
call_getVersion() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/version" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    aPI)
    operation="aPI"
    ;;
    getAPIJSONFormat)
    operation="getAPIJSONFormat"
    ;;
    getAPIYAMLFormat)
    operation="getAPIYAMLFormat"
    ;;
    getAPIYAMLFormat EndPoint)
    operation="getAPIYAMLFormat EndPoint"
    ;;
    getModule)
    operation="getModule"
    ;;
    getModuleResource)
    operation="getModuleResource"
    ;;
    getModuleResources)
    operation="getModuleResources"
    ;;
    getModules)
    operation="getModules"
    ;;
    getModulesFields)
    operation="getModulesFields"
    ;;
    getResources)
    operation="getResources"
    ;;
    getResourcesFields)
    operation="getResourcesFields"
    ;;
    registerModule)
    operation="registerModule"
    ;;
    registerModuleResource)
    operation="registerModuleResource"
    ;;
    unregisterModule)
    operation="unregisterModule"
    ;;
    unregisterModuleResource)
    operation="unregisterModuleResource"
    ;;
    updateModule)
    operation="updateModule"
    ;;
    updateModuleResource)
    operation="updateModuleResource"
    ;;
    deleteResourceEndpoint)
    operation="deleteResourceEndpoint"
    ;;
    deleteResourceEndpointItem)
    operation="deleteResourceEndpointItem"
    ;;
    getResourceEndpoint)
    operation="getResourceEndpoint"
    ;;
    getResourceEndpointItem)
    operation="getResourceEndpointItem"
    ;;
    patchResourceEndpoint)
    operation="patchResourceEndpoint"
    ;;
    patchResourceEndpointItem)
    operation="patchResourceEndpointItem"
    ;;
    postResourceEndpoint)
    operation="postResourceEndpoint"
    ;;
    postResourceEndpointItem)
    operation="postResourceEndpointItem"
    ;;
    putResourceEndpoint)
    operation="putResourceEndpoint"
    ;;
    putResourceEndpointItem)
    operation="putResourceEndpointItem"
    ;;
    addGroup)
    operation="addGroup"
    ;;
    deleteGroup)
    operation="deleteGroup"
    ;;
    getGroup)
    operation="getGroup"
    ;;
    getGroupFields)
    operation="getGroupFields"
    ;;
    getGroups)
    operation="getGroups"
    ;;
    updateGroup)
    operation="updateGroup"
    ;;
    addInstallation)
    operation="addInstallation"
    ;;
    deleteInstallation)
    operation="deleteInstallation"
    ;;
    getChannels)
    operation="getChannels"
    ;;
    getInstallation)
    operation="getInstallation"
    ;;
    getInstallationFields)
    operation="getInstallationFields"
    ;;
    getInstallations)
    operation="getInstallations"
    ;;
    updateInstallation)
    operation="updateInstallation"
    ;;
    send)
    operation="send"
    ;;
    addUser)
    operation="addUser"
    ;;
    deleteUser)
    operation="deleteUser"
    ;;
    getUser)
    operation="getUser"
    ;;
    getUserFields)
    operation="getUserFields"
    ;;
    getUserGroups)
    operation="getUserGroups"
    ;;
    getUsers)
    operation="getUsers"
    ;;
    loginUser)
    operation="loginUser"
    ;;
    logoutUser)
    operation="logoutUser"
    ;;
    signupUser)
    operation="signupUser"
    ;;
    updateUser)
    operation="updateUser"
    ;;
    getVersion)
    operation="getVersion"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +\([^=]\):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    aPI)
    call_aPI
    ;;
    getAPIJSONFormat)
    call_getAPIJSONFormat
    ;;
    getAPIYAMLFormat)
    call_getAPIYAMLFormat
    ;;
    getAPIYAMLFormat EndPoint)
    call_getAPIYAMLFormat EndPoint
    ;;
    getModule)
    call_getModule
    ;;
    getModuleResource)
    call_getModuleResource
    ;;
    getModuleResources)
    call_getModuleResources
    ;;
    getModules)
    call_getModules
    ;;
    getModulesFields)
    call_getModulesFields
    ;;
    getResources)
    call_getResources
    ;;
    getResourcesFields)
    call_getResourcesFields
    ;;
    registerModule)
    call_registerModule
    ;;
    registerModuleResource)
    call_registerModuleResource
    ;;
    unregisterModule)
    call_unregisterModule
    ;;
    unregisterModuleResource)
    call_unregisterModuleResource
    ;;
    updateModule)
    call_updateModule
    ;;
    updateModuleResource)
    call_updateModuleResource
    ;;
    deleteResourceEndpoint)
    call_deleteResourceEndpoint
    ;;
    deleteResourceEndpointItem)
    call_deleteResourceEndpointItem
    ;;
    getResourceEndpoint)
    call_getResourceEndpoint
    ;;
    getResourceEndpointItem)
    call_getResourceEndpointItem
    ;;
    patchResourceEndpoint)
    call_patchResourceEndpoint
    ;;
    patchResourceEndpointItem)
    call_patchResourceEndpointItem
    ;;
    postResourceEndpoint)
    call_postResourceEndpoint
    ;;
    postResourceEndpointItem)
    call_postResourceEndpointItem
    ;;
    putResourceEndpoint)
    call_putResourceEndpoint
    ;;
    putResourceEndpointItem)
    call_putResourceEndpointItem
    ;;
    addGroup)
    call_addGroup
    ;;
    deleteGroup)
    call_deleteGroup
    ;;
    getGroup)
    call_getGroup
    ;;
    getGroupFields)
    call_getGroupFields
    ;;
    getGroups)
    call_getGroups
    ;;
    updateGroup)
    call_updateGroup
    ;;
    addInstallation)
    call_addInstallation
    ;;
    deleteInstallation)
    call_deleteInstallation
    ;;
    getChannels)
    call_getChannels
    ;;
    getInstallation)
    call_getInstallation
    ;;
    getInstallationFields)
    call_getInstallationFields
    ;;
    getInstallations)
    call_getInstallations
    ;;
    updateInstallation)
    call_updateInstallation
    ;;
    send)
    call_send
    ;;
    addUser)
    call_addUser
    ;;
    deleteUser)
    call_deleteUser
    ;;
    getUser)
    call_getUser
    ;;
    getUserFields)
    call_getUserFields
    ;;
    getUserGroups)
    call_getUserGroups
    ;;
    getUsers)
    call_getUsers
    ;;
    loginUser)
    call_loginUser
    ;;
    logoutUser)
    call_logoutUser
    ;;
    signupUser)
    call_signupUser
    ;;
    updateUser)
    call_updateUser
    ;;
    getVersion)
    call_getVersion
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
