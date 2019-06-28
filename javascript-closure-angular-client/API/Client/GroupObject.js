goog.provide('API.Client.groupObject');

/**
 * @record
 */
API.Client.GroupObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.GroupObject.prototype.name;

/**
 * @type {!API.Client._metaGroupObject}
 * @export
 */
API.Client.GroupObject.prototype.meta;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.GroupObject.prototype.users;

