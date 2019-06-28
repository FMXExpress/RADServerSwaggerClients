goog.provide('API.Client.installationObject');

/**
 * @record
 */
API.Client.InstallationObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.InstallationObject.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.InstallationObject.prototype.deviceToken;

/**
 * @type {!string}
 * @export
 */
API.Client.InstallationObject.prototype.deviceType;

/**
 * @type {!API.Client._metaInstallationObject}
 * @export
 */
API.Client.InstallationObject.prototype.meta;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.InstallationObject.prototype.channels;

/** @enum {string} */
API.Client.InstallationObject.DeviceTypeEnum = { 
  ios: 'ios',
  android: 'android',
}
