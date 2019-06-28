goog.provide('API.Client.userTokenObject');

/**
 * @record
 */
API.Client.UserTokenObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.UserTokenObject.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.UserTokenObject.prototype.username;

/**
 * @type {!API.Client._metaObject}
 * @export
 */
API.Client.UserTokenObject.prototype.meta;

/**
 * @type {!string}
 * @export
 */
API.Client.UserTokenObject.prototype.sessiontoken;

