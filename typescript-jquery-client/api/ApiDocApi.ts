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


import * as $ from 'jquery';
import * as models from '../model/models';
import { COLLECTION_FORMATS } from '../variables';
import { Configuration } from '../configuration';

/* tslint:disable:no-unused-variable member-ordering */


export class ApiDocApi {
    protected basePath = 'http://localhost:8080';
    public defaultHeaders: Array<string> = [];
    public defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings = null;
    public configuration: Configuration = new Configuration();

    constructor(basePath?: string, configuration?: Configuration, defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
        }
        if (defaultExtraJQueryAjaxSettings) {
            this.defaultExtraJQueryAjaxSettings = defaultExtraJQueryAjaxSettings;
        }
    }

    private extendObj<T1, T2 extends T1>(objA: T2, objB: T2): T1|T2 {
        for (let key in objB) {
            if (objB.hasOwnProperty(key)) {
                objA[key] = objB[key];
            }
        }
        return objA;
    }

    /**
     *  |      Used to retrieve all the API EndPoints.
     * @summary Get API EndPoints
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public aPI(xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body?: any;  }> {
        let localVarPath = this.basePath + '/api';

        let queryParameters: any = {};
        let headerParams: any = {};

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: any, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     * Get API in JSON format
     * @summary Get JSON
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getAPIJSONFormat(xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body?: any;  }> {
        let localVarPath = this.basePath + '/api/apidoc.json';

        let queryParameters: any = {};
        let headerParams: any = {};

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: any, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     * Get API in YAML format
     * @summary Get YAML
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getAPIYAMLFormat(xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body?: any;  }> {
        let localVarPath = this.basePath + '/api/apidoc.yaml';

        let queryParameters: any = {};
        let headerParams: any = {};

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: any, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

    /**
     *  |      Used to retrieve an EndPoint for the API EndPoints.
     * @summary Get API EndPoint
     * @param item Path Segment to an EndPoint
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getAPIYAMLFormatEndPoint(item: string, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQueryPromise<{ response: JQueryXHR; body?: any;  }> {
        let localVarPath = this.basePath + '/api/{item}/apidoc.yaml'.replace('{' + 'item' + '}', encodeURIComponent(String(item)));

        let queryParameters: any = {};
        let headerParams: any = {};
        // verify required parameter 'item' is not null or undefined
        if (item === null || item === undefined) {
            throw new Error('Required parameter item was null or undefined when calling getAPIYAMLFormatEndPoint.');
        }


        localVarPath = localVarPath + "?" + $.param(queryParameters);
        headerParams['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);

        headerParams['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);

        headerParams['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);

        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'application/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred();
        $.ajax(requestOptions).then(
            (data: any, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve(jqXHR, data),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject(xhr, errorThrown)
        );
        return dfd.promise();
    }

}