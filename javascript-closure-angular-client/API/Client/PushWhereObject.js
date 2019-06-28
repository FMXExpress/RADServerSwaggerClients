goog.provide('API.Client.pushWhereObject');

/**
 * @record
 */
API.Client.PushWhereObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PushWhereObject.prototype.deviceType;

/**
 * @type {!API.Client.pushWhereObject_deviceToken}
 * @export
 */
API.Client.PushWhereObject.prototype.deviceToken;

/** @enum {string} */
API.Client.PushWhereObject.DeviceTypeEnum = { 
  ios: 'ios',
  android: 'android',
}
