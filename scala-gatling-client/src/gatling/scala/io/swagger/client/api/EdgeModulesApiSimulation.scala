package io.swagger.client.api

import io.swagger.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class EdgeModulesApiSimulation extends Simulation {

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
    val getModulePerSecond = config.getDouble("performance.operationsPerSecond.getModule") * rateMultiplier * instanceMultiplier
    val getModuleResourcePerSecond = config.getDouble("performance.operationsPerSecond.getModuleResource") * rateMultiplier * instanceMultiplier
    val getModuleResourcesPerSecond = config.getDouble("performance.operationsPerSecond.getModuleResources") * rateMultiplier * instanceMultiplier
    val getModulesPerSecond = config.getDouble("performance.operationsPerSecond.getModules") * rateMultiplier * instanceMultiplier
    val getModulesFieldsPerSecond = config.getDouble("performance.operationsPerSecond.getModulesFields") * rateMultiplier * instanceMultiplier
    val getResourcesPerSecond = config.getDouble("performance.operationsPerSecond.getResources") * rateMultiplier * instanceMultiplier
    val getResourcesFieldsPerSecond = config.getDouble("performance.operationsPerSecond.getResourcesFields") * rateMultiplier * instanceMultiplier
    val registerModulePerSecond = config.getDouble("performance.operationsPerSecond.registerModule") * rateMultiplier * instanceMultiplier
    val registerModuleResourcePerSecond = config.getDouble("performance.operationsPerSecond.registerModuleResource") * rateMultiplier * instanceMultiplier
    val unregisterModulePerSecond = config.getDouble("performance.operationsPerSecond.unregisterModule") * rateMultiplier * instanceMultiplier
    val unregisterModuleResourcePerSecond = config.getDouble("performance.operationsPerSecond.unregisterModuleResource") * rateMultiplier * instanceMultiplier
    val updateModulePerSecond = config.getDouble("performance.operationsPerSecond.updateModule") * rateMultiplier * instanceMultiplier
    val updateModuleResourcePerSecond = config.getDouble("performance.operationsPerSecond.updateModuleResource") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val GetModuleHEADERFeeder = csv(userDataDirectory + File.separator + "getModule-headerParams.csv").random
    val GetModulePATHFeeder = csv(userDataDirectory + File.separator + "getModule-pathParams.csv").random
    val GetModuleResourceHEADERFeeder = csv(userDataDirectory + File.separator + "getModuleResource-headerParams.csv").random
    val GetModuleResourcePATHFeeder = csv(userDataDirectory + File.separator + "getModuleResource-pathParams.csv").random
    val GetModuleResourcesHEADERFeeder = csv(userDataDirectory + File.separator + "getModuleResources-headerParams.csv").random
    val GetModuleResourcesPATHFeeder = csv(userDataDirectory + File.separator + "getModuleResources-pathParams.csv").random
    val GetModulesHEADERFeeder = csv(userDataDirectory + File.separator + "getModules-headerParams.csv").random
    val GetModulesFieldsHEADERFeeder = csv(userDataDirectory + File.separator + "getModulesFields-headerParams.csv").random
    val GetResourcesHEADERFeeder = csv(userDataDirectory + File.separator + "getResources-headerParams.csv").random
    val GetResourcesFieldsHEADERFeeder = csv(userDataDirectory + File.separator + "getResourcesFields-headerParams.csv").random
    val RegisterModuleHEADERFeeder = csv(userDataDirectory + File.separator + "registerModule-headerParams.csv").random
    val RegisterModuleBodyFeeder = csv(userDataDirectory + File.separator + "registerModule-bodyParams.csv", escapeChar = '\\').random
    val RegisterModuleResourceHEADERFeeder = csv(userDataDirectory + File.separator + "registerModuleResource-headerParams.csv").random
    val RegisterModuleResourcePATHFeeder = csv(userDataDirectory + File.separator + "registerModuleResource-pathParams.csv").random
    val RegisterModuleResourceBodyFeeder = csv(userDataDirectory + File.separator + "registerModuleResource-bodyParams.csv", escapeChar = '\\').random
    val UnregisterModuleHEADERFeeder = csv(userDataDirectory + File.separator + "unregisterModule-headerParams.csv").random
    val UnregisterModulePATHFeeder = csv(userDataDirectory + File.separator + "unregisterModule-pathParams.csv").random
    val UnregisterModuleResourceHEADERFeeder = csv(userDataDirectory + File.separator + "unregisterModuleResource-headerParams.csv").random
    val UnregisterModuleResourcePATHFeeder = csv(userDataDirectory + File.separator + "unregisterModuleResource-pathParams.csv").random
    val UpdateModuleHEADERFeeder = csv(userDataDirectory + File.separator + "updateModule-headerParams.csv").random
    val UpdateModulePATHFeeder = csv(userDataDirectory + File.separator + "updateModule-pathParams.csv").random
    val UpdateModuleBodyFeeder = csv(userDataDirectory + File.separator + "updateModule-bodyParams.csv", escapeChar = '\\').random
    val UpdateModuleResourceHEADERFeeder = csv(userDataDirectory + File.separator + "updateModuleResource-headerParams.csv").random
    val UpdateModuleResourcePATHFeeder = csv(userDataDirectory + File.separator + "updateModuleResource-pathParams.csv").random
    val UpdateModuleResourceBodyFeeder = csv(userDataDirectory + File.separator + "updateModuleResource-bodyParams.csv", escapeChar = '\\').random

    // Setup all scenarios

    
    val scngetModule = scenario("getModuleSimulation")
        .feed(GetModuleHEADERFeeder)
        .feed(GetModulePATHFeeder)
        .exec(http("getModule")
        .httpRequest("GET","/edgemodules/${mname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetModule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetModule.inject(
        rampUsersPerSec(1) to(getModulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getModulePerSecond) during(durationSeconds),
        rampUsersPerSec(getModulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetModuleResource = scenario("getModuleResourceSimulation")
        .feed(GetModuleResourceHEADERFeeder)
        .feed(GetModuleResourcePATHFeeder)
        .exec(http("getModuleResource")
        .httpRequest("GET","/edgemodules/${mname}/resources/${name}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetModuleResource with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetModuleResource.inject(
        rampUsersPerSec(1) to(getModuleResourcePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getModuleResourcePerSecond) during(durationSeconds),
        rampUsersPerSec(getModuleResourcePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetModuleResources = scenario("getModuleResourcesSimulation")
        .feed(GetModuleResourcesHEADERFeeder)
        .feed(GetModuleResourcesPATHFeeder)
        .exec(http("getModuleResources")
        .httpRequest("GET","/edgemodules/${mname}/resources")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetModuleResources with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetModuleResources.inject(
        rampUsersPerSec(1) to(getModuleResourcesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getModuleResourcesPerSecond) during(durationSeconds),
        rampUsersPerSec(getModuleResourcesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetModules = scenario("getModulesSimulation")
        .feed(GetModulesHEADERFeeder)
        .exec(http("getModules")
        .httpRequest("GET","/edgemodules")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetModules with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetModules.inject(
        rampUsersPerSec(1) to(getModulesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getModulesPerSecond) during(durationSeconds),
        rampUsersPerSec(getModulesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetModulesFields = scenario("getModulesFieldsSimulation")
        .feed(GetModulesFieldsHEADERFeeder)
        .exec(http("getModulesFields")
        .httpRequest("GET","/edgemodules/fields")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetModulesFields with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetModulesFields.inject(
        rampUsersPerSec(1) to(getModulesFieldsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getModulesFieldsPerSecond) during(durationSeconds),
        rampUsersPerSec(getModulesFieldsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetResources = scenario("getResourcesSimulation")
        .feed(GetResourcesHEADERFeeder)
        .exec(http("getResources")
        .httpRequest("GET","/edgemodules/resources")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetResources with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetResources.inject(
        rampUsersPerSec(1) to(getResourcesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getResourcesPerSecond) during(durationSeconds),
        rampUsersPerSec(getResourcesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetResourcesFields = scenario("getResourcesFieldsSimulation")
        .feed(GetResourcesFieldsHEADERFeeder)
        .exec(http("getResourcesFields")
        .httpRequest("GET","/edgemodules/resources/fields")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetResourcesFields with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetResourcesFields.inject(
        rampUsersPerSec(1) to(getResourcesFieldsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getResourcesFieldsPerSecond) during(durationSeconds),
        rampUsersPerSec(getResourcesFieldsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnregisterModule = scenario("registerModuleSimulation")
        .feed(RegisterModuleHEADERFeeder)
        .feed(RegisterModuleBodyFeeder)
        .exec(http("registerModule")
        .httpRequest("POST","/edgemodules")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(edgeModuleAddObject.toStringBody("${protocol}","${modulename}","${protocolprops}")))
        )

    // Run scnregisterModule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnregisterModule.inject(
        rampUsersPerSec(1) to(registerModulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(registerModulePerSecond) during(durationSeconds),
        rampUsersPerSec(registerModulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnregisterModuleResource = scenario("registerModuleResourceSimulation")
        .feed(RegisterModuleResourceHEADERFeeder)
        .feed(RegisterModuleResourceBodyFeeder)
        .feed(RegisterModuleResourcePATHFeeder)
        .exec(http("registerModuleResource")
        .httpRequest("POST","/edgemodules/${mname}/resources")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(edgeModuleResourceAddObject.toStringBody("${resourcename}")))
        )

    // Run scnregisterModuleResource with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnregisterModuleResource.inject(
        rampUsersPerSec(1) to(registerModuleResourcePerSecond) during(rampUpSeconds),
        constantUsersPerSec(registerModuleResourcePerSecond) during(durationSeconds),
        rampUsersPerSec(registerModuleResourcePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnunregisterModule = scenario("unregisterModuleSimulation")
        .feed(UnregisterModuleHEADERFeeder)
        .feed(UnregisterModulePATHFeeder)
        .exec(http("unregisterModule")
        .httpRequest("DELETE","/edgemodules/${mname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scnunregisterModule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnunregisterModule.inject(
        rampUsersPerSec(1) to(unregisterModulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(unregisterModulePerSecond) during(durationSeconds),
        rampUsersPerSec(unregisterModulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnunregisterModuleResource = scenario("unregisterModuleResourceSimulation")
        .feed(UnregisterModuleResourceHEADERFeeder)
        .feed(UnregisterModuleResourcePATHFeeder)
        .exec(http("unregisterModuleResource")
        .httpRequest("DELETE","/edgemodules/${mname}/resources/${name}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scnunregisterModuleResource with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnunregisterModuleResource.inject(
        rampUsersPerSec(1) to(unregisterModuleResourcePerSecond) during(rampUpSeconds),
        constantUsersPerSec(unregisterModuleResourcePerSecond) during(durationSeconds),
        rampUsersPerSec(unregisterModuleResourcePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateModule = scenario("updateModuleSimulation")
        .feed(UpdateModuleHEADERFeeder)
        .feed(UpdateModuleBodyFeeder)
        .feed(UpdateModulePATHFeeder)
        .exec(http("updateModule")
        .httpRequest("PUT","/edgemodules/${mname}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(edgeModuleUpdateObject.toStringBody("${protocol}","${modulename}","${protocolprops}")))
        )

    // Run scnupdateModule with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateModule.inject(
        rampUsersPerSec(1) to(updateModulePerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateModulePerSecond) during(durationSeconds),
        rampUsersPerSec(updateModulePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateModuleResource = scenario("updateModuleResourceSimulation")
        .feed(UpdateModuleResourceHEADERFeeder)
        .feed(UpdateModuleResourceBodyFeeder)
        .feed(UpdateModuleResourcePATHFeeder)
        .exec(http("updateModuleResource")
        .httpRequest("PUT","/edgemodules/${mname}/resources/${name}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(edgeModuleResourceUpdateObject.toStringBody("${resourcename}")))
        )

    // Run scnupdateModuleResource with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateModuleResource.inject(
        rampUsersPerSec(1) to(updateModuleResourcePerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateModuleResourcePerSecond) during(durationSeconds),
        rampUsersPerSec(updateModuleResourcePerSecond) to(1) during(rampDownSeconds)
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
