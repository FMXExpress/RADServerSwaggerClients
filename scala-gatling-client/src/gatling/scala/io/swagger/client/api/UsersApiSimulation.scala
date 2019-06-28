package io.swagger.client.api

import io.swagger.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class UsersApiSimulation extends Simulation {

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
    val addUserPerSecond = config.getDouble("performance.operationsPerSecond.addUser") * rateMultiplier * instanceMultiplier
    val deleteUserPerSecond = config.getDouble("performance.operationsPerSecond.deleteUser") * rateMultiplier * instanceMultiplier
    val getUserPerSecond = config.getDouble("performance.operationsPerSecond.getUser") * rateMultiplier * instanceMultiplier
    val getUserFieldsPerSecond = config.getDouble("performance.operationsPerSecond.getUserFields") * rateMultiplier * instanceMultiplier
    val getUserGroupsPerSecond = config.getDouble("performance.operationsPerSecond.getUserGroups") * rateMultiplier * instanceMultiplier
    val getUsersPerSecond = config.getDouble("performance.operationsPerSecond.getUsers") * rateMultiplier * instanceMultiplier
    val loginUserPerSecond = config.getDouble("performance.operationsPerSecond.loginUser") * rateMultiplier * instanceMultiplier
    val logoutUserPerSecond = config.getDouble("performance.operationsPerSecond.logoutUser") * rateMultiplier * instanceMultiplier
    val signupUserPerSecond = config.getDouble("performance.operationsPerSecond.signupUser") * rateMultiplier * instanceMultiplier
    val updateUserPerSecond = config.getDouble("performance.operationsPerSecond.updateUser") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val AddUserHEADERFeeder = csv(userDataDirectory + File.separator + "addUser-headerParams.csv").random
    val AddUserBodyFeeder = csv(userDataDirectory + File.separator + "addUser-bodyParams.csv", escapeChar = '\\').random
    val DeleteUserHEADERFeeder = csv(userDataDirectory + File.separator + "deleteUser-headerParams.csv").random
    val DeleteUserPATHFeeder = csv(userDataDirectory + File.separator + "deleteUser-pathParams.csv").random
    val GetUserHEADERFeeder = csv(userDataDirectory + File.separator + "getUser-headerParams.csv").random
    val GetUserPATHFeeder = csv(userDataDirectory + File.separator + "getUser-pathParams.csv").random
    val GetUserFieldsHEADERFeeder = csv(userDataDirectory + File.separator + "getUserFields-headerParams.csv").random
    val GetUserGroupsHEADERFeeder = csv(userDataDirectory + File.separator + "getUserGroups-headerParams.csv").random
    val GetUserGroupsPATHFeeder = csv(userDataDirectory + File.separator + "getUserGroups-pathParams.csv").random
    val GetUsersQUERYFeeder = csv(userDataDirectory + File.separator + "getUsers-queryParams.csv").random
    val GetUsersHEADERFeeder = csv(userDataDirectory + File.separator + "getUsers-headerParams.csv").random
    val LoginUserHEADERFeeder = csv(userDataDirectory + File.separator + "loginUser-headerParams.csv").random
    val LoginUserBodyFeeder = csv(userDataDirectory + File.separator + "loginUser-bodyParams.csv", escapeChar = '\\').random
    val LogoutUserHEADERFeeder = csv(userDataDirectory + File.separator + "logoutUser-headerParams.csv").random
    val SignupUserHEADERFeeder = csv(userDataDirectory + File.separator + "signupUser-headerParams.csv").random
    val SignupUserBodyFeeder = csv(userDataDirectory + File.separator + "signupUser-bodyParams.csv", escapeChar = '\\').random
    val UpdateUserHEADERFeeder = csv(userDataDirectory + File.separator + "updateUser-headerParams.csv").random
    val UpdateUserPATHFeeder = csv(userDataDirectory + File.separator + "updateUser-pathParams.csv").random
    val UpdateUserBodyFeeder = csv(userDataDirectory + File.separator + "updateUser-bodyParams.csv", escapeChar = '\\').random

    // Setup all scenarios

    
    val scnaddUser = scenario("addUserSimulation")
        .feed(AddUserHEADERFeeder)
        .feed(AddUserBodyFeeder)
        .exec(http("addUser")
        .httpRequest("POST","/users")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(userCredentialsObject.toStringBody("${password}","${username}")))
        )

    // Run scnaddUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnaddUser.inject(
        rampUsersPerSec(1) to(addUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(addUserPerSecond) during(durationSeconds),
        rampUsersPerSec(addUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scndeleteUser = scenario("deleteUserSimulation")
        .feed(DeleteUserHEADERFeeder)
        .feed(DeleteUserPATHFeeder)
        .exec(http("deleteUser")
        .httpRequest("DELETE","/users/${id}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scndeleteUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeleteUser.inject(
        rampUsersPerSec(1) to(deleteUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deleteUserPerSecond) during(durationSeconds),
        rampUsersPerSec(deleteUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUser = scenario("getUserSimulation")
        .feed(GetUserHEADERFeeder)
        .feed(GetUserPATHFeeder)
        .exec(http("getUser")
        .httpRequest("GET","/users/${id}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUser.inject(
        rampUsersPerSec(1) to(getUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUserPerSecond) during(durationSeconds),
        rampUsersPerSec(getUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUserFields = scenario("getUserFieldsSimulation")
        .feed(GetUserFieldsHEADERFeeder)
        .exec(http("getUserFields")
        .httpRequest("GET","/users/fields")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetUserFields with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUserFields.inject(
        rampUsersPerSec(1) to(getUserFieldsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUserFieldsPerSecond) during(durationSeconds),
        rampUsersPerSec(getUserFieldsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUserGroups = scenario("getUserGroupsSimulation")
        .feed(GetUserGroupsHEADERFeeder)
        .feed(GetUserGroupsPATHFeeder)
        .exec(http("getUserGroups")
        .httpRequest("GET","/users/${id}/groups")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetUserGroups with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUserGroups.inject(
        rampUsersPerSec(1) to(getUserGroupsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUserGroupsPerSecond) during(durationSeconds),
        rampUsersPerSec(getUserGroupsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUsers = scenario("getUsersSimulation")
        .feed(GetUsersQUERYFeeder)
        .feed(GetUsersHEADERFeeder)
        .exec(http("getUsers")
        .httpRequest("GET","/users")
        .queryParam("limit","${limit}")
        .queryParam("skip","${skip}")
        .queryParam("order","${order}")
        .queryParam("where","${where}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scngetUsers with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUsers.inject(
        rampUsersPerSec(1) to(getUsersPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUsersPerSecond) during(durationSeconds),
        rampUsersPerSec(getUsersPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnloginUser = scenario("loginUserSimulation")
        .feed(LoginUserHEADERFeeder)
        .feed(LoginUserBodyFeeder)
        .exec(http("loginUser")
        .httpRequest("POST","/users/login")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(userCredentialsObject.toStringBody("${password}","${username}")))
        )

    // Run scnloginUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnloginUser.inject(
        rampUsersPerSec(1) to(loginUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(loginUserPerSecond) during(durationSeconds),
        rampUsersPerSec(loginUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnlogoutUser = scenario("logoutUserSimulation")
        .feed(LogoutUserHEADERFeeder)
        .exec(http("logoutUser")
        .httpRequest("POST","/users/logout")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
)

    // Run scnlogoutUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnlogoutUser.inject(
        rampUsersPerSec(1) to(logoutUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(logoutUserPerSecond) during(durationSeconds),
        rampUsersPerSec(logoutUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsignupUser = scenario("signupUserSimulation")
        .feed(SignupUserHEADERFeeder)
        .feed(SignupUserBodyFeeder)
        .exec(http("signupUser")
        .httpRequest("POST","/users/signup")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(userCredentialsObject.toStringBody("${password}","${username}")))
        )

    // Run scnsignupUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsignupUser.inject(
        rampUsersPerSec(1) to(signupUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(signupUserPerSecond) during(durationSeconds),
        rampUsersPerSec(signupUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnupdateUser = scenario("updateUserSimulation")
        .feed(UpdateUserHEADERFeeder)
        .feed(UpdateUserBodyFeeder)
        .feed(UpdateUserPATHFeeder)
        .exec(http("updateUser")
        .httpRequest("PUT","/users/${id}")
        .header("X-Embarcadero-Master-Secret","${X-Embarcadero-Master-Secret}")
        .header("X-Embarcadero-App-Secret","${X-Embarcadero-App-Secret}")
        .header("X-Embarcadero-Application-Id","${X-Embarcadero-Application-Id}")
        .body(StringBody(updateObject.toStringBody("${fieldName}")))
        )

    // Run scnupdateUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnupdateUser.inject(
        rampUsersPerSec(1) to(updateUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(updateUserPerSecond) during(durationSeconds),
        rampUsersPerSec(updateUserPerSecond) to(1) during(rampDownSeconds)
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
