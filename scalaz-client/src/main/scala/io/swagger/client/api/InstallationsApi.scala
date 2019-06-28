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

object InstallationsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addInstallation(host: String, body: InstallationAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[InstallationAddedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[InstallationAddedObject] = jsonOf[InstallationAddedObject]

    val path = "/installations"
    
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
      resp          <- client.expect[InstallationAddedObject](req)

    } yield resp
  }
  
  def deleteInstallation(host: String, id: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/installations/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))
    
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
  
  def getChannels(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[ChannelName]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ChannelName]] = jsonOf[List[ChannelName]]

    val path = "/installations/channels"
    
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
      resp          <- client.expect[List[ChannelName]](req)

    } yield resp
  }
  
  def getInstallation(host: String, id: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[InstallationObject] = {
    implicit val returnTypeDecoder: EntityDecoder[InstallationObject] = jsonOf[InstallationObject]

    val path = "/installations/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))
    
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
      resp          <- client.expect[InstallationObject](req)

    } yield resp
  }
  
  def getInstallationFields(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[FieldInstallationObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FieldInstallationObject]] = jsonOf[List[FieldInstallationObject]]

    val path = "/installations/fields"
    
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
      resp          <- client.expect[List[FieldInstallationObject]](req)

    } yield resp
  }
  
  def getInstallations(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String, skip: BigDecimal, limit: BigDecimal, order: BigDecimal, where: String)(implicit skipQuery: QueryParam[BigDecimal], limitQuery: QueryParam[BigDecimal], orderQuery: QueryParam[BigDecimal], whereQuery: QueryParam[String]): Task[List[InstallationObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[InstallationObject]] = jsonOf[List[InstallationObject]]

    val path = "/installations"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      ("skip", Some(skipQuery.toParamString(skip))), ("limit", Some(limitQuery.toParamString(limit))), ("order", Some(orderQuery.toParamString(order))), ("where", Some(whereQuery.toParamString(where))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[InstallationObject]](req)

    } yield resp
  }
  
  def updateInstallation(host: String, id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[UpdatedInstallationObject] = {
    implicit val returnTypeDecoder: EntityDecoder[UpdatedInstallationObject] = jsonOf[UpdatedInstallationObject]

    val path = "/installations/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))
    
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
      resp          <- client.expect[UpdatedInstallationObject](req)

    } yield resp
  }
  
}

class HttpServiceInstallationsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addInstallation(body: InstallationAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[InstallationAddedObject] = {
    implicit val returnTypeDecoder: EntityDecoder[InstallationAddedObject] = jsonOf[InstallationAddedObject]

    val path = "/installations"
    
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
      resp          <- client.expect[InstallationAddedObject](req)

    } yield resp
  }
  
  def deleteInstallation(id: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/installations/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))
    
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
  
  def getChannels(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[ChannelName]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ChannelName]] = jsonOf[List[ChannelName]]

    val path = "/installations/channels"
    
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
      resp          <- client.expect[List[ChannelName]](req)

    } yield resp
  }
  
  def getInstallation(id: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[InstallationObject] = {
    implicit val returnTypeDecoder: EntityDecoder[InstallationObject] = jsonOf[InstallationObject]

    val path = "/installations/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))
    
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
      resp          <- client.expect[InstallationObject](req)

    } yield resp
  }
  
  def getInstallationFields(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[FieldInstallationObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FieldInstallationObject]] = jsonOf[List[FieldInstallationObject]]

    val path = "/installations/fields"
    
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
      resp          <- client.expect[List[FieldInstallationObject]](req)

    } yield resp
  }
  
  def getInstallations(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String, skip: BigDecimal, limit: BigDecimal, order: BigDecimal, where: String)(implicit skipQuery: QueryParam[BigDecimal], limitQuery: QueryParam[BigDecimal], orderQuery: QueryParam[BigDecimal], whereQuery: QueryParam[String]): Task[List[InstallationObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[InstallationObject]] = jsonOf[List[InstallationObject]]

    val path = "/installations"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      Header("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId), Header("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret), Header("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret))
    val queryParams = Query(
      ("skip", Some(skipQuery.toParamString(skip))), ("limit", Some(limitQuery.toParamString(limit))), ("order", Some(orderQuery.toParamString(order))), ("where", Some(whereQuery.toParamString(where))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[InstallationObject]](req)

    } yield resp
  }
  
  def updateInstallation(id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[UpdatedInstallationObject] = {
    implicit val returnTypeDecoder: EntityDecoder[UpdatedInstallationObject] = jsonOf[UpdatedInstallationObject]

    val path = "/installations/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))
    
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
      resp          <- client.expect[UpdatedInstallationObject](req)

    } yield resp
  }
  
}
