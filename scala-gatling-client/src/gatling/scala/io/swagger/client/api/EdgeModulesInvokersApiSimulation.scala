package io.swagger.client.api

import io.swagger.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class EdgeModulesInvokersApiSimulation extends Simulation {

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
    val deleteResourceEndpointPerSecond = config.getDouble("performance.operationsPerSecond.deleteResourceEndpoint") * rateMultiplier * instanceMultiplier
    val deleteResourceEndpointItemPerSecond = config.getDouble("performance.operationsPerSecond.deleteResourceEndpointItem") * rateMultiplier * instanceMultiplier
    val getResourceEndpointPerSecond = config.getDouble("performance.operationsPerSecond.getResourceEndpoint") * rateMultiplier * instanceMultiplier
    val getResourceEndpointItemPerSecond = config.getDouble("performance.operationsPerSecond.getResourceEndpointItem") * rateMultiplier * instanceMultiplier
    val patchResourceEndpointPerSecond = config.getDouble("performance.operationsPerSecond.patchResourceEndpoint") * rateMultiplier * instanceMultiplier
    val patchResourceEndpointItemPerSecond = config.getDouble("performance.operationsPerSecond.patchResourceEndpointItem") * rateMultiplier * instanceMultiplier
    val postResourceEndpointPerSecond = config.getDouble("performance.operationsPerSecond.postResourceEndpoint") * rateMultiplier * instanceMultiplier
    val postResourceEndpointItemPerSecond = config.getDouble("performance.operationsPerSecond.postResourceEndpointItem") * rateMultiplier * instanceMultiplier
    val putResourceEndpointPerSecond = config.getDouble("performance.operationsPerSecond.putResourceEndpoint") * rateMultiplier * instanceMultiplier
    val putResourceEndpointItemPerSecond = config.getDouble("performance.operationsPerSecond.putResourceEndpointItem") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val DeleteResourceEndpointHEADERFeeder = csv(userDataDirectory + File.separator + "deleteResourceEndpoint-headerParams.csv").random
    val DeleteResourceEndpointPATHFeeder = csv(userDataDirectory + File.separator + "deleteResourceEndpoint-pathParams.csv").random
    val DeleteResourceEndpointItemHEADERFeeder = csv(userDataDirectory + File.separator + "deleteResourceEndpointItem-headerParams.csv").random
    val DeleteResourceEndpointItemPATHFeeder = csv(userDataDirectory + File.separator + "deleteResourceEndpointItem-pathParams.csv").random
    val GetResourceEndpointHEADERFeeder = csv(userDataDirectory + File.separator + "getResourceEndpoint-headerParams.csv").random
    val GetResourceEndpointPATHFeeder = csv(userDataDirectory + File.separator + "getResourceEndpoint-pathParams.csv").random
    val GetResourceEndpointItemHEADERFeeder = csv(userDataDirectory + File.separator + "getResourceEndpointItem-headerParams.csv").random
    val GetResourceEndpointItemPATHFeeder = csv(userDataDirectory + File.separator + "getResourceEndpointItem-pathParams.csv").random
    val PatchResourceEndpointHEADERFeeder = csv(userDataDirectory + File.separator + "patchResourceEndpoint-headerParams.csv").random
    val PatchResourceEndpointPATHFeeder = csv(userDataDirectory + File.separator + "patchResourceEndpoint-pathParams.csv").random
    val PatchResourceEndpointItemHEADERFeeder = csv(userDataDirectory + File.separator + "patchResourceEndpointItem-headerParams.csv").random
    val PatchResourceEndpointItemPATHFeeder = csv(userDataDirectory + File.separator + "patchResourceEndpointItem-pathParams.csv").random
    val PostResourceEndpointHEADERFeeder = csv(userDataDirectory + File.separator + "postResourceEndpoint-headerParams.csv").random
    val PostResourceEndpointPATHFeeder = csv(userDataDirectory + File.separator + "postResourceEndpoint-pathParams.csv").random
    val PostResourceEndpointItemHEADERFeeder = csv(userDataDirectory + File.separator + "postResourceEndpointItem-headerParams.csv").random
    val PostResourceEndpointItemPATHFeeder = csv(userDataDirectory + File.separator + "postResourceEndpointItem-pathParams.csv").random
    val PutResourceEndpointHEADERFeeder = csv(userDataDirectory + File.separator + "putResourceEndpoint-headerParams.csv").random
    val PutResourceEndpointPATHFeeder = csv(userDataDirectory + File.separator + "putResourceEndpoint-pathParams.csv").random
    val PutResourceEndpointItemHEADERFeeder = csv(userDataDirectory + File.separator + "putResourceEndpointItem-headerParams.csv").random
    val PutResourceEndpointItemPATHFeeder = csv(userDataDirectory + File.separator + "putResourceEndpointItem-pathParams.csv").random

    // Setup all scenarios

    
    val scndeleteResourceEndpoint = scenario("deleteResourceEndpointSimulation")
        .feed(DeleteResourceEndpointHEADERFeeder)
        .feed(DeleteResourceEndpointPATHFeeder)
        .exec(http("deleteResourceEndpoint")
        .httpRequest("DELETE","/edgemodules/${mname}/${rname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scndeleteResourceEndpoint with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteResourceEndpoint.inject(
        rampUsersPerSec(1) to(deleteResourceEndpointPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteResourceEndpointPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteResourceEndpointPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteResourceEndpointItem = scenario("deleteResourceEndpointItemSimulation")
        .feed(DeleteResourceEndpointItemHEADERFeeder)
        .feed(DeleteResourceEndpointItemPATHFeeder)
        .exec(http("deleteResourceEndpointItem")
        .httpRequest("DELETE","/edgemodules/${mname}/${rname}/${wildcard}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scndeleteResourceEndpointItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteResourceEndpointItem.inject(
        rampUsersPerSec(1) to(deleteResourceEndpointItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteResourceEndpointItemPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteResourceEndpointItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetResourceEndpoint = scenario("getResourceEndpointSimulation")
        .feed(GetResourceEndpointHEADERFeeder)
        .feed(GetResourceEndpointPATHFeeder)
        .exec(http("getResourceEndpoint")
        .httpRequest("GET","/edgemodules/${mname}/${rname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetResourceEndpoint with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetResourceEndpoint.inject(
        rampUsersPerSec(1) to(getResourceEndpointPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getResourceEndpointPerSecond) during(durationSeconds),
        rampUsersPerSec(getResourceEndpointPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetResourceEndpointItem = scenario("getResourceEndpointItemSimulation")
        .feed(GetResourceEndpointItemHEADERFeeder)
        .feed(GetResourceEndpointItemPATHFeeder)
        .exec(http("getResourceEndpointItem")
        .httpRequest("GET","/edgemodules/${mname}/${rname}/${wildcard}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetResourceEndpointItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetResourceEndpointItem.inject(
        rampUsersPerSec(1) to(getResourceEndpointItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getResourceEndpointItemPerSecond) during(durationSeconds),
        rampUsersPerSec(getResourceEndpointItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpatchResourceEndpoint = scenario("patchResourceEndpointSimulation")
        .feed(PatchResourceEndpointHEADERFeeder)
        .feed(PatchResourceEndpointPATHFeeder)
        .exec(http("patchResourceEndpoint")
        .httpRequest("PATCH","/edgemodules/${mname}/${rname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(StringBody("{}")))
        )

    // Run scnpatchResourceEndpoint with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpatchResourceEndpoint.inject(
        rampUsersPerSec(1) to(patchResourceEndpointPerSecond) during(rampUpSeconds),
        constantUsersPerSec(patchResourceEndpointPerSecond) during(durationSeconds),
        rampUsersPerSec(patchResourceEndpointPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpatchResourceEndpointItem = scenario("patchResourceEndpointItemSimulation")
        .feed(PatchResourceEndpointItemHEADERFeeder)
        .feed(PatchResourceEndpointItemPATHFeeder)
        .exec(http("patchResourceEndpointItem")
        .httpRequest("PATCH","/edgemodules/${mname}/${rname}/${wildcard}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(StringBody("{}")))
        )

    // Run scnpatchResourceEndpointItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpatchResourceEndpointItem.inject(
        rampUsersPerSec(1) to(patchResourceEndpointItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(patchResourceEndpointItemPerSecond) during(durationSeconds),
        rampUsersPerSec(patchResourceEndpointItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostResourceEndpoint = scenario("postResourceEndpointSimulation")
        .feed(PostResourceEndpointHEADERFeeder)
        .feed(PostResourceEndpointPATHFeeder)
        .exec(http("postResourceEndpoint")
        .httpRequest("POST","/edgemodules/${mname}/${rname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(StringBody("{}")))
        )

    // Run scnpostResourceEndpoint with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostResourceEndpoint.inject(
        rampUsersPerSec(1) to(postResourceEndpointPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postResourceEndpointPerSecond) during(durationSeconds),
        rampUsersPerSec(postResourceEndpointPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostResourceEndpointItem = scenario("postResourceEndpointItemSimulation")
        .feed(PostResourceEndpointItemHEADERFeeder)
        .feed(PostResourceEndpointItemPATHFeeder)
        .exec(http("postResourceEndpointItem")
        .httpRequest("POST","/edgemodules/${mname}/${rname}/${wildcard}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(StringBody("{}")))
        )

    // Run scnpostResourceEndpointItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostResourceEndpointItem.inject(
        rampUsersPerSec(1) to(postResourceEndpointItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postResourceEndpointItemPerSecond) during(durationSeconds),
        rampUsersPerSec(postResourceEndpointItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputResourceEndpoint = scenario("putResourceEndpointSimulation")
        .feed(PutResourceEndpointHEADERFeeder)
        .feed(PutResourceEndpointPATHFeeder)
        .exec(http("putResourceEndpoint")
        .httpRequest("PUT","/edgemodules/${mname}/${rname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(StringBody("{}")))
        )

    // Run scnputResourceEndpoint with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputResourceEndpoint.inject(
        rampUsersPerSec(1) to(putResourceEndpointPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putResourceEndpointPerSecond) during(durationSeconds),
        rampUsersPerSec(putResourceEndpointPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputResourceEndpointItem = scenario("putResourceEndpointItemSimulation")
        .feed(PutResourceEndpointItemHEADERFeeder)
        .feed(PutResourceEndpointItemPATHFeeder)
        .exec(http("putResourceEndpointItem")
        .httpRequest("PUT","/edgemodules/${mname}/${rname}/${wildcard}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(StringBody("{}")))
        )

    // Run scnputResourceEndpointItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputResourceEndpointItem.inject(
        rampUsersPerSec(1) to(putResourceEndpointItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putResourceEndpointItemPerSecond) during(durationSeconds),
        rampUsersPerSec(putResourceEndpointItemPerSecond) to(1) during(rampDownSeconds)
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
