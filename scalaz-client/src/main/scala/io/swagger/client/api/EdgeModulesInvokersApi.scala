package io.swagger.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

object EdgeModulesInvokersApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def deleteResourceEndpoint(host: String, mname: String, rname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def deleteResourceEndpointItem(host: String, mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def getResourceEndpoint(host: String, mname: String, rname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def getResourceEndpointItem(host: String, mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def patchResourceEndpoint(host: String, mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def patchResourceEndpointItem(host: String, mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def postResourceEndpoint(host: String, mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def postResourceEndpointItem(host: String, mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def putResourceEndpoint(host: String, mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def putResourceEndpointItem(host: String, mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
}

class HttpServiceEdgeModulesInvokersApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def deleteResourceEndpoint(mname: String, rname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def deleteResourceEndpointItem(mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def getResourceEndpoint(mname: String, rname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def getResourceEndpointItem(mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def patchResourceEndpoint(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def patchResourceEndpointItem(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def postResourceEndpoint(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def postResourceEndpointItem(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def putResourceEndpoint(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString))
    
    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
  def putResourceEndpointItem(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "rname" + "\\}",escape(rname.toString)).replaceAll("\\{" + "wildcard" + "\\}",escape(wildcard.toString))
    
    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }
  
}
