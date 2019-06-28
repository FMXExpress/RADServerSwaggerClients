/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import { autoinject } from 'aurelia-framework';
import { HttpClient } from 'aurelia-http-client';
import { Api } from './Api';
import { AuthStorage } from './AuthStorage';
import {
  ChannelName,
  InstallationAddedObject,
  InstallationObject,
  UpdatedInstallationObject,
  UpdateInstallationObject,
  FieldInstallationObject,
  InstallationAddObject,
} from './models';

/**
 * addInstallation - parameters interface
 */
export interface IAddInstallationParams {
  body: InstallationAddObject;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * deleteInstallation - parameters interface
 */
export interface IDeleteInstallationParams {
  id: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getChannels - parameters interface
 */
export interface IGetChannelsParams {
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getInstallation - parameters interface
 */
export interface IGetInstallationParams {
  id: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getInstallationFields - parameters interface
 */
export interface IGetInstallationFieldsParams {
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getInstallations - parameters interface
 */
export interface IGetInstallationsParams {
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
  skip?: number;
  limit?: number;
  order?: number;
  where?: string;
}

/**
 * updateInstallation - parameters interface
 */
export interface IUpdateInstallationParams {
  id: string;
  body: UpdateInstallationObject;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * InstallationsApi - API class
 */
@autoinject()
export class InstallationsApi extends Api {

  /**
   * Creates a new InstallationsApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Add Installation
   *  |      Used to add a new &#x60;Installation&#x60; object to the EMS database.
   * @param params.body Object to sign up a new EMS User in the EMS Server
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async addInstallation(params: IAddInstallationParams): Promise<InstallationAddedObject> {
    // Verify required parameters are set
    this.ensureParamIsSet('addInstallation', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/installations`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPost()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Delete Installation
   *  |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
   * @param params.id A Installation ID
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async deleteInstallation(params: IDeleteInstallationParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('deleteInstallation', params, 'id');

    // Create URL to call
    const url = `${this.basePath}/installations/{id}`
      .replace(`{${'id'}}`, encodeURIComponent(`${params['id']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asDelete()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get Installation Channels
   *  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getChannels(params: IGetChannelsParams): Promise<Array<ChannelName>> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/installations/channels`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get Installation
   *  |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
   * @param params.id A Installation ID
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getInstallation(params: IGetInstallationParams): Promise<InstallationObject> {
    // Verify required parameters are set
    this.ensureParamIsSet('getInstallation', params, 'id');

    // Create URL to call
    const url = `${this.basePath}/installations/{id}`
      .replace(`{${'id'}}`, encodeURIComponent(`${params['id']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get Fields
   *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getInstallationFields(params: IGetInstallationFieldsParams): Promise<Array<FieldInstallationObject>> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/installations/fields`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get Installations
   *  |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   * @param params.skip users skipped
   * @param params.limit maximum number of results to return
   * @param params.order order ascending or descending (asc, desc)
   * @param params.where filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
   */
  async getInstallations(params: IGetInstallationsParams): Promise<Array<InstallationObject>> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/installations`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      // Set query parameters
      .withParams({ 
        'skip': params['skip'],
        'limit': params['limit'],
        'order': params['order'],
        'where': params['where'],
      })
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Update Installation
   *  |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
   * @param params.id A Installation ID
   * @param params.body Installation fields to update
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async updateInstallation(params: IUpdateInstallationParams): Promise<UpdatedInstallationObject> {
    // Verify required parameters are set
    this.ensureParamIsSet('updateInstallation', params, 'id');
    this.ensureParamIsSet('updateInstallation', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/installations/{id}`
      .replace(`{${'id'}}`, encodeURIComponent(`${params['id']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPut()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

}
