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

object GroupsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addGroup(host: String, body: GroupAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/groups"
    
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
  
  def deleteGroup(host: String, item: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/groups/{item}".replaceAll("\\{" + "item" + "\\}",escape(item.toString))
    
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
  
  def getGroup(host: String, item: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[GroupObject] = {
    implicit val returnTypeDecoder: EntityDecoder[GroupObject] = jsonOf[GroupObject]

    val path = "/groups/{item}".replaceAll("\\{" + "item" + "\\}",escape(item.toString))
    
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
      resp          <- client.expect[GroupObject](req)

    } yield resp
  }
  
  def getGroupFields(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[FieldGroupObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FieldGroupObject]] = jsonOf[List[FieldGroupObject]]

    val path = "/groups/fields"
    
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
      resp          <- client.expect[List[FieldGroupObject]](req)

    } yield resp
  }
  
  def getGroups(host: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String, skip: BigDecimal, limit: BigDecimal, order: BigDecimal, where: String)(implicit skipQuery: QueryParam[BigDecimal], limitQuery: QueryParam[BigDecimal], orderQuery: QueryParam[BigDecimal], whereQuery: QueryParam[String]): Task[List[GroupObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GroupObject]] = jsonOf[List[GroupObject]]

    val path = "/groups"
    
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
      resp          <- client.expect[List[GroupObject]](req)

    } yield resp
  }
  
  def updateGroup(host: String, item: String, body: UpdateGroupObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[UpdatedGroupObject] = {
    implicit val returnTypeDecoder: EntityDecoder[UpdatedGroupObject] = jsonOf[UpdatedGroupObject]

    val path = "/groups/{item}".replaceAll("\\{" + "item" + "\\}",escape(item.toString))
    
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
      resp          <- client.expect[UpdatedGroupObject](req)

    } yield resp
  }
  
}

class HttpServiceGroupsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addGroup(body: GroupAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/groups"
    
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
  
  def deleteGroup(item: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[Unit] = {
    val path = "/groups/{item}".replaceAll("\\{" + "item" + "\\}",escape(item.toString))
    
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
  
  def getGroup(item: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[GroupObject] = {
    implicit val returnTypeDecoder: EntityDecoder[GroupObject] = jsonOf[GroupObject]

    val path = "/groups/{item}".replaceAll("\\{" + "item" + "\\}",escape(item.toString))
    
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
      resp          <- client.expect[GroupObject](req)

    } yield resp
  }
  
  def getGroupFields(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[List[FieldGroupObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FieldGroupObject]] = jsonOf[List[FieldGroupObject]]

    val path = "/groups/fields"
    
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
      resp          <- client.expect[List[FieldGroupObject]](req)

    } yield resp
  }
  
  def getGroups(xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String, skip: BigDecimal, limit: BigDecimal, order: BigDecimal, where: String)(implicit skipQuery: QueryParam[BigDecimal], limitQuery: QueryParam[BigDecimal], orderQuery: QueryParam[BigDecimal], whereQuery: QueryParam[String]): Task[List[GroupObject]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[GroupObject]] = jsonOf[List[GroupObject]]

    val path = "/groups"
    
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
      resp          <- client.expect[List[GroupObject]](req)

    } yield resp
  }
  
  def updateGroup(item: String, body: UpdateGroupObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): Task[UpdatedGroupObject] = {
    implicit val returnTypeDecoder: EntityDecoder[UpdatedGroupObject] = jsonOf[UpdatedGroupObject]

    val path = "/groups/{item}".replaceAll("\\{" + "item" + "\\}",escape(item.toString))
    
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
      resp          <- client.expect[UpdatedGroupObject](req)

    } yield resp
  }
  
}
