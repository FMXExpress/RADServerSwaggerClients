goog.provide('API.Client.pushDataObject');

/**
 * @record
 */
API.Client.PushDataObject = function() {}

/**
 * @type {!API.Client.pushDataObject_gcm}
 * @export
 */
API.Client.PushDataObject.prototype.gcm;

/**
 * @type {!API.Client.pushDataObject_aps}
 * @export
 */
API.Client.PushDataObject.prototype.aps;

/**
 * @type {!API.Client.pushDataObject_extras}
 * @export
 */
API.Client.PushDataObject.prototype.extras;

