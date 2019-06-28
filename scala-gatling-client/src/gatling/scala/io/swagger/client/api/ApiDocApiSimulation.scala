package io.swagger.client.api

import io.swagger.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class ApiDocApiSimulation extends Simulation {

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
    val aPIPerSecond = config.getDouble("performance.operationsPerSecond.aPI") * rateMultiplier * instanceMultiplier
    val getAPIJSONFormatPerSecond = config.getDouble("performance.operationsPerSecond.getAPIJSONFormat") * rateMultiplier * instanceMultiplier
    val getAPIYAMLFormatPerSecond = config.getDouble("performance.operationsPerSecond.getAPIYAMLFormat") * rateMultiplier * instanceMultiplier
    val getAPIYAMLFormat EndPointPerSecond = config.getDouble("performance.operationsPerSecond.getAPIYAMLFormat EndPoint") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val APIHEADERFeeder = csv(userDataDirectory + File.separator + "aPI-headerParams.csv").random
    val GetAPIJSONFormatHEADERFeeder = csv(userDataDirectory + File.separator + "getAPIJSONFormat-headerParams.csv").random
    val GetAPIYAMLFormatHEADERFeeder = csv(userDataDirectory + File.separator + "getAPIYAMLFormat-headerParams.csv").random
    val GetAPIYAMLFormat EndPointHEADERFeeder = csv(userDataDirectory + File.separator + "getAPIYAMLFormat EndPoint-headerParams.csv").random
    val GetAPIYAMLFormat EndPointPATHFeeder = csv(userDataDirectory + File.separator + "getAPIYAMLFormat EndPoint-pathParams.csv").random

    // Setup all scenarios

    
    val scnaPI = scenario("aPISimulation")
        .feed(APIHEADERFeeder)
        .exec(http("aPI")
        .httpRequest("GET","/api")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scnaPI with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaPI.inject(
        rampUsersPerSec(1) to(aPIPerSecond) during(rampUpSeconds),
        constantUsersPerSec(aPIPerSecond) during(durationSeconds),
        rampUsersPerSec(aPIPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAPIJSONFormat = scenario("getAPIJSONFormatSimulation")
        .feed(GetAPIJSONFormatHEADERFeeder)
        .exec(http("getAPIJSONFormat")
        .httpRequest("GET","/api/apidoc.json")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetAPIJSONFormat with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAPIJSONFormat.inject(
        rampUsersPerSec(1) to(getAPIJSONFormatPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAPIJSONFormatPerSecond) during(durationSeconds),
        rampUsersPerSec(getAPIJSONFormatPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAPIYAMLFormat = scenario("getAPIYAMLFormatSimulation")
        .feed(GetAPIYAMLFormatHEADERFeeder)
        .exec(http("getAPIYAMLFormat")
        .httpRequest("GET","/api/apidoc.yaml")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetAPIYAMLFormat with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAPIYAMLFormat.inject(
        rampUsersPerSec(1) to(getAPIYAMLFormatPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAPIYAMLFormatPerSecond) during(durationSeconds),
        rampUsersPerSec(getAPIYAMLFormatPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAPIYAMLFormat EndPoint = scenario("getAPIYAMLFormat EndPointSimulation")
        .feed(GetAPIYAMLFormat EndPointHEADERFeeder)
        .feed(GetAPIYAMLFormat EndPointPATHFeeder)
        .exec(http("getAPIYAMLFormat EndPoint")
        .httpRequest("GET","/api/${item}/apidoc.yaml")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetAPIYAMLFormat EndPoint with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAPIYAMLFormat EndPoint.inject(
        rampUsersPerSec(1) to(getAPIYAMLFormat EndPointPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAPIYAMLFormat EndPointPerSecond) during(durationSeconds),
        rampUsersPerSec(getAPIYAMLFormat EndPointPerSecond) to(1) during(rampDownSeconds)
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
