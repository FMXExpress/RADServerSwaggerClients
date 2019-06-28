package io.swagger.client.api

import io.swagger.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class GroupsApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("http://localhost:8080")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val addGroupPerSecond = config.getDouble("performance.operationsPerSecond.addGroup") * rateMultiplier * instanceMultiplier
    val deleteGroupPerSecond = config.getDouble("performance.operationsPerSecond.deleteGroup") * rateMultiplier * instanceMultiplier
    val getGroupPerSecond = config.getDouble("performance.operationsPerSecond.getGroup") * rateMultiplier * instanceMultiplier
    val getGroupFieldsPerSecond = config.getDouble("performance.operationsPerSecond.getGroupFields") * rateMultiplier * instanceMultiplier
    val getGroupsPerSecond = config.getDouble("performance.operationsPerSecond.getGroups") * rateMultiplier * instanceMultiplier
    val updateGroupPerSecond = config.getDouble("performance.operationsPerSecond.updateGroup") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val AddGroupHEADERFeeder = csv(userDataDirectory + File.separator + "addGroup-headerParams.csv").random
    val AddGroupBodyFeeder = csv(userDataDirectory + File.separator + "addGroup-bodyParams.csv", escapeChar = '\\').random
    val DeleteGroupHEADERFeeder = csv(userDataDirectory + File.separator + "deleteGroup-headerParams.csv").random
    val DeleteGroupPATHFeeder = csv(userDataDirectory + File.separator + "deleteGroup-pathParams.csv").random
    val GetGroupHEADERFeeder = csv(userDataDirectory + File.separator + "getGroup-headerParams.csv").random
    val GetGroupPATHFeeder = csv(userDataDirectory + File.separator + "getGroup-pathParams.csv").random
    val GetGroupFieldsHEADERFeeder = csv(userDataDirectory + File.separator + "getGroupFields-headerParams.csv").random
    val GetGroupsQUERYFeeder = csv(userDataDirectory + File.separator + "getGroups-queryParams.csv").random
    val GetGroupsHEADERFeeder = csv(userDataDirectory + File.separator + "getGroups-headerParams.csv").random
    val UpdateGroupHEADERFeeder = csv(userDataDirectory + File.separator + "updateGroup-headerParams.csv").random
    val UpdateGroupPATHFeeder = csv(userDataDirectory + File.separator + "updateGroup-pathParams.csv").random
    val UpdateGroupBodyFeeder = csv(userDataDirectory + File.separator + "updateGroup-bodyParams.csv", escapeChar = '\\').random

    // Setup all scenarios

    
    val scnaddGroup = scenario("addGroupSimulation")
        .feed(AddGroupHEADERFeeder)
        .feed(AddGroupBodyFeeder)
        .exec(http("addGroup")
        .httpRequest("POST","/groups")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(groupAddObject.toStringBody("${groupname}")))
        )

    // Run scnaddGroup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddGroup.inject(
        rampUsersPerSec(1) to(addGroupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addGroupPerSecond) during(durationSeconds),
        rampUsersPerSec(addGroupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteGroup = scenario("deleteGroupSimulation")
        .feed(DeleteGroupHEADERFeeder)
        .feed(DeleteGroupPATHFeeder)
        .exec(http("deleteGroup")
        .httpRequest("DELETE","/groups/${item}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scndeleteGroup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteGroup.inject(
        rampUsersPerSec(1) to(deleteGroupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteGroupPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteGroupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetGroup = scenario("getGroupSimulation")
        .feed(GetGroupHEADERFeeder)
        .feed(GetGroupPATHFeeder)
        .exec(http("getGroup")
        .httpRequest("GET","/groups/${item}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetGroup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetGroup.inject(
        rampUsersPerSec(1) to(getGroupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getGroupPerSecond) during(durationSeconds),
        rampUsersPerSec(getGroupPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetGroupFields = scenario("getGroupFieldsSimulation")
        .feed(GetGroupFieldsHEADERFeeder)
        .exec(http("getGroupFields")
        .httpRequest("GET","/groups/fields")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetGroupFields with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetGroupFields.inject(
        rampUsersPerSec(1) to(getGroupFieldsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getGroupFieldsPerSecond) during(durationSeconds),
        rampUsersPerSec(getGroupFieldsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetGroups = scenario("getGroupsSimulation")
        .feed(GetGroupsQUERYFeeder)
        .feed(GetGroupsHEADERFeeder)
        .exec(http("getGroups")
        .httpRequest("GET","/groups")
        .queryParam("limit","${limit}")
        .queryParam("skip","${skip}")
        .queryParam("order","${order}")
        .queryParam("where","${where}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetGroups with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetGroups.inject(
        rampUsersPerSec(1) to(getGroupsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getGroupsPerSecond) during(durationSeconds),
        rampUsersPerSec(getGroupsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateGroup = scenario("updateGroupSimulation")
        .feed(UpdateGroupHEADERFeeder)
        .feed(UpdateGroupBodyFeeder)
        .feed(UpdateGroupPATHFeeder)
        .exec(http("updateGroup")
        .httpRequest("PUT","/groups/${item}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(updateGroupObject.toStringBody("${users}","${fieldName}")))
        )

    // Run scnupdateGroup with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateGroup.inject(
        rampUsersPerSec(1) to(updateGroupPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateGroupPerSecond) during(durationSeconds),
        rampUsersPerSec(updateGroupPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
