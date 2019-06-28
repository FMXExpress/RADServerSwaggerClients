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

object EdgeModulesApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getModule(host: String, mname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleObject] = jsonOf[EdgeModuleObject]

    val path = "/edgemodules/{mname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[EdgeModuleObject](req)

    } yield resp
  }
  
  def getModuleResource(host: String, mname: String, name: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleResourceObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleResourceObject] = jsonOf[EdgeModuleResourceObject]

    val path = "/edgemodules/{mname}/resources/{name}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "name" + "\\}",escape(name.toString))
    
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
      resp          <- client.expect[EdgeModuleResourceObject](req)

    } yield resp
  }
  
  def getModuleResources(host: String, mname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[EdgeModuleResourceObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EdgeModuleResourceObject]] = jsonOf[List[EdgeModuleResourceObject]]

    val path = "/edgemodules/{mname}/resources".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[List[EdgeModuleResourceObject]](req)

    } yield resp
  }
  
  def getModules(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[EdgeModuleObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EdgeModuleObject]] = jsonOf[List[EdgeModuleObject]]

    val path = "/edgemodules"
    
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
      resp          <- client.expect[List[EdgeModuleObject]](req)

    } yield resp
  }
  
  def getModulesFields(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[FieldsEdgeModuleObject] = {
    implicit val returnTypeDecoder: EntityDecoder[FieldsEdgeModuleObject] = jsonOf[FieldsEdgeModuleObject]

    val path = "/edgemodules/fields"
    
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
      resp          <- client.expect[FieldsEdgeModuleObject](req)

    } yield resp
  }
  
  def getResources(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[EdgeModuleResourceObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EdgeModuleResourceObject]] = jsonOf[List[EdgeModuleResourceObject]]

    val path = "/edgemodules/resources"
    
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
      resp          <- client.expect[List[EdgeModuleResourceObject]](req)

    } yield resp
  }
  
  def getResourcesFields(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[FieldsEdgeModuleObject] = {
    implicit val returnTypeDecoder: EntityDecoder[FieldsEdgeModuleObject] = jsonOf[FieldsEdgeModuleObject]

    val path = "/edgemodules/resources/fields"
    
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
      resp          <- client.expect[FieldsEdgeModuleObject](req)

    } yield resp
  }
  
  def registerModule(host: String, body: EdgeModuleAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleAddedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleAddedObject] = jsonOf[EdgeModuleAddedObject]

    val path = "/edgemodules"
    
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
      resp          <- client.expect[EdgeModuleAddedObject](req)

    } yield resp
  }
  
  def registerModuleResource(host: String, mname: String, body: EdgeModuleResourceAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleResourceAddedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleResourceAddedObject] = jsonOf[EdgeModuleResourceAddedObject]

    val path = "/edgemodules/{mname}/resources".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[EdgeModuleResourceAddedObject](req)

    } yield resp
  }
  
  def unregisterModule(host: String, mname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
  
  def unregisterModuleResource(host: String, mname: String, name: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/resources/{name}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "name" + "\\}",escape(name.toString))
    
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
  
  def updateModule(host: String, mname: String, body: EdgeModuleUpdateObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleUpdatedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleUpdatedObject] = jsonOf[EdgeModuleUpdatedObject]

    val path = "/edgemodules/{mname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[EdgeModuleUpdatedObject](req)

    } yield resp
  }
  
  def updateModuleResource(host: String, mname: String, name: String, body: EdgeModuleResourceUpdateObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleResourceUpdatedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleResourceUpdatedObject] = jsonOf[EdgeModuleResourceUpdatedObject]

    val path = "/edgemodules/{mname}/resources/{name}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "name" + "\\}",escape(name.toString))
    
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
      resp          <- client.expect[EdgeModuleResourceUpdatedObject](req)

    } yield resp
  }
  
}

class HttpServiceEdgeModulesApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getModule(mname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleObject] = jsonOf[EdgeModuleObject]

    val path = "/edgemodules/{mname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[EdgeModuleObject](req)

    } yield resp
  }
  
  def getModuleResource(mname: String, name: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleResourceObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleResourceObject] = jsonOf[EdgeModuleResourceObject]

    val path = "/edgemodules/{mname}/resources/{name}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "name" + "\\}",escape(name.toString))
    
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
      resp          <- client.expect[EdgeModuleResourceObject](req)

    } yield resp
  }
  
  def getModuleResources(mname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[EdgeModuleResourceObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EdgeModuleResourceObject]] = jsonOf[List[EdgeModuleResourceObject]]

    val path = "/edgemodules/{mname}/resources".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[List[EdgeModuleResourceObject]](req)

    } yield resp
  }
  
  def getModules(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[EdgeModuleObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EdgeModuleObject]] = jsonOf[List[EdgeModuleObject]]

    val path = "/edgemodules"
    
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
      resp          <- client.expect[List[EdgeModuleObject]](req)

    } yield resp
  }
  
  def getModulesFields(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[FieldsEdgeModuleObject] = {
    implicit val returnTypeDecoder: EntityDecoder[FieldsEdgeModuleObject] = jsonOf[FieldsEdgeModuleObject]

    val path = "/edgemodules/fields"
    
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
      resp          <- client.expect[FieldsEdgeModuleObject](req)

    } yield resp
  }
  
  def getResources(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[EdgeModuleResourceObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EdgeModuleResourceObject]] = jsonOf[List[EdgeModuleResourceObject]]

    val path = "/edgemodules/resources"
    
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
      resp          <- client.expect[List[EdgeModuleResourceObject]](req)

    } yield resp
  }
  
  def getResourcesFields(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[FieldsEdgeModuleObject] = {
    implicit val returnTypeDecoder: EntityDecoder[FieldsEdgeModuleObject] = jsonOf[FieldsEdgeModuleObject]

    val path = "/edgemodules/resources/fields"
    
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
      resp          <- client.expect[FieldsEdgeModuleObject](req)

    } yield resp
  }
  
  def registerModule(body: EdgeModuleAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleAddedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleAddedObject] = jsonOf[EdgeModuleAddedObject]

    val path = "/edgemodules"
    
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
      resp          <- client.expect[EdgeModuleAddedObject](req)

    } yield resp
  }
  
  def registerModuleResource(mname: String, body: EdgeModuleResourceAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleResourceAddedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleResourceAddedObject] = jsonOf[EdgeModuleResourceAddedObject]

    val path = "/edgemodules/{mname}/resources".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[EdgeModuleResourceAddedObject](req)

    } yield resp
  }
  
  def unregisterModule(mname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
  
  def unregisterModuleResource(mname: String, name: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/edgemodules/{mname}/resources/{name}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "name" + "\\}",escape(name.toString))
    
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
  
  def updateModule(mname: String, body: EdgeModuleUpdateObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleUpdatedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleUpdatedObject] = jsonOf[EdgeModuleUpdatedObject]

    val path = "/edgemodules/{mname}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString))
    
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
      resp          <- client.expect[EdgeModuleUpdatedObject](req)

    } yield resp
  }
  
  def updateModuleResource(mname: String, name: String, body: EdgeModuleResourceUpdateObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[EdgeModuleResourceUpdatedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[EdgeModuleResourceUpdatedObject] = jsonOf[EdgeModuleResourceUpdatedObject]

    val path = "/edgemodules/{mname}/resources/{name}".replaceAll("\\{" + "mname" + "\\}",escape(mname.toString)).replaceAll("\\{" + "name" + "\\}",escape(name.toString))
    
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
      resp          <- client.expect[EdgeModuleResourceUpdatedObject](req)

    } yield resp
  }
  
}
