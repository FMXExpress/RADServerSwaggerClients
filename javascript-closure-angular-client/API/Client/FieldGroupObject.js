goog.provide('API.Client.fieldGroupObject');

/**
 * @record
 */
API.Client.FieldGroupObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.FieldGroupObject.prototype.name;

/**
 * @type {!Array<!API.Client.fieldObject_fields>}
 * @export
 */
API.Client.FieldGroupObject.prototype.fields;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FieldGroupObject.prototype.custom;

