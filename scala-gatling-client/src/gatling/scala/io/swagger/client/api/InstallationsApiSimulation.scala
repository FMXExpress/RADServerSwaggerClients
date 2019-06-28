package io.swagger.client.api

import io.swagger.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class InstallationsApiSimulation extends Simulation {

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
    val addInstallationPerSecond = config.getDouble("performance.operationsPerSecond.addInstallation") * rateMultiplier * instanceMultiplier
    val deleteInstallationPerSecond = config.getDouble("performance.operationsPerSecond.deleteInstallation") * rateMultiplier * instanceMultiplier
    val getChannelsPerSecond = config.getDouble("performance.operationsPerSecond.getChannels") * rateMultiplier * instanceMultiplier
    val getInstallationPerSecond = config.getDouble("performance.operationsPerSecond.getInstallation") * rateMultiplier * instanceMultiplier
    val getInstallationFieldsPerSecond = config.getDouble("performance.operationsPerSecond.getInstallationFields") * rateMultiplier * instanceMultiplier
    val getInstallationsPerSecond = config.getDouble("performance.operationsPerSecond.getInstallations") * rateMultiplier * instanceMultiplier
    val updateInstallationPerSecond = config.getDouble("performance.operationsPerSecond.updateInstallation") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val AddInstallationHEADERFeeder = csv(userDataDirectory + File.separator + "addInstallation-headerParams.csv").random
    val AddInstallationBodyFeeder = csv(userDataDirectory + File.separator + "addInstallation-bodyParams.csv", escapeChar = '\\').random
    val DeleteInstallationHEADERFeeder = csv(userDataDirectory + File.separator + "deleteInstallation-headerParams.csv").random
    val DeleteInstallationPATHFeeder = csv(userDataDirectory + File.separator + "deleteInstallation-pathParams.csv").random
    val GetChannelsHEADERFeeder = csv(userDataDirectory + File.separator + "getChannels-headerParams.csv").random
    val GetInstallationHEADERFeeder = csv(userDataDirectory + File.separator + "getInstallation-headerParams.csv").random
    val GetInstallationPATHFeeder = csv(userDataDirectory + File.separator + "getInstallation-pathParams.csv").random
    val GetInstallationFieldsHEADERFeeder = csv(userDataDirectory + File.separator + "getInstallationFields-headerParams.csv").random
    val GetInstallationsQUERYFeeder = csv(userDataDirectory + File.separator + "getInstallations-queryParams.csv").random
    val GetInstallationsHEADERFeeder = csv(userDataDirectory + File.separator + "getInstallations-headerParams.csv").random
    val UpdateInstallationHEADERFeeder = csv(userDataDirectory + File.separator + "updateInstallation-headerParams.csv").random
    val UpdateInstallationPATHFeeder = csv(userDataDirectory + File.separator + "updateInstallation-pathParams.csv").random
    val UpdateInstallationBodyFeeder = csv(userDataDirectory + File.separator + "updateInstallation-bodyParams.csv", escapeChar = '\\').random

    // Setup all scenarios

    
    val scnaddInstallation = scenario("addInstallationSimulation")
        .feed(AddInstallationHEADERFeeder)
        .feed(AddInstallationBodyFeeder)
        .exec(http("addInstallation")
        .httpRequest("POST","/installations")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(installationAddObject.toStringBody("${deviceToken}","${channels}","${deviceType}")))
        )

    // Run scnaddInstallation with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddInstallation.inject(
        rampUsersPerSec(1) to(addInstallationPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addInstallationPerSecond) during(durationSeconds),
        rampUsersPerSec(addInstallationPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteInstallation = scenario("deleteInstallationSimulation")
        .feed(DeleteInstallationHEADERFeeder)
        .feed(DeleteInstallationPATHFeeder)
        .exec(http("deleteInstallation")
        .httpRequest("DELETE","/installations/${id}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scndeleteInstallation with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteInstallation.inject(
        rampUsersPerSec(1) to(deleteInstallationPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteInstallationPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteInstallationPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetChannels = scenario("getChannelsSimulation")
        .feed(GetChannelsHEADERFeeder)
        .exec(http("getChannels")
        .httpRequest("GET","/installations/channels")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetChannels with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetChannels.inject(
        rampUsersPerSec(1) to(getChannelsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getChannelsPerSecond) during(durationSeconds),
        rampUsersPerSec(getChannelsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetInstallation = scenario("getInstallationSimulation")
        .feed(GetInstallationHEADERFeeder)
        .feed(GetInstallationPATHFeeder)
        .exec(http("getInstallation")
        .httpRequest("GET","/installations/${id}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetInstallation with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetInstallation.inject(
        rampUsersPerSec(1) to(getInstallationPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getInstallationPerSecond) during(durationSeconds),
        rampUsersPerSec(getInstallationPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetInstallationFields = scenario("getInstallationFieldsSimulation")
        .feed(GetInstallationFieldsHEADERFeeder)
        .exec(http("getInstallationFields")
        .httpRequest("GET","/installations/fields")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetInstallationFields with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetInstallationFields.inject(
        rampUsersPerSec(1) to(getInstallationFieldsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getInstallationFieldsPerSecond) during(durationSeconds),
        rampUsersPerSec(getInstallationFieldsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetInstallations = scenario("getInstallationsSimulation")
        .feed(GetInstallationsQUERYFeeder)
        .feed(GetInstallationsHEADERFeeder)
        .exec(http("getInstallations")
        .httpRequest("GET","/installations")
        .queryParam("limit","${limit}")
        .queryParam("skip","${skip}")
        .queryParam("order","${order}")
        .queryParam("where","${where}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetInstallations with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetInstallations.inject(
        rampUsersPerSec(1) to(getInstallationsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getInstallationsPerSecond) during(durationSeconds),
        rampUsersPerSec(getInstallationsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateInstallation = scenario("updateInstallationSimulation")
        .feed(UpdateInstallationHEADERFeeder)
        .feed(UpdateInstallationBodyFeeder)
        .feed(UpdateInstallationPATHFeeder)
        .exec(http("updateInstallation")
        .httpRequest("PUT","/installations/${id}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(updateInstallationObject.toStringBody("${channels}")))
        )

    // Run scnupdateInstallation with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateInstallation.inject(
        rampUsersPerSec(1) to(updateInstallationPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateInstallationPerSecond) during(durationSeconds),
        rampUsersPerSec(updateInstallationPerSecond) to(1) during(rampDownSeconds)
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
