goog.provide('API.Client.pushObject');

/**
 * @record
 */
API.Client.PushObject = function() {}

/**
 * @type {!API.Client.pushDataObject}
 * @export
 */
API.Client.PushObject.prototype.data;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.PushObject.prototype.channels;

/**
 * @type {!API.Client.pushWhereObject}
 * @export
 */
API.Client.PushObject.prototype.where;

