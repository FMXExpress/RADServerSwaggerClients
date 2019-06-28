goog.provide('API.Client.fieldObject');

/**
 * @record
 */
API.Client.FieldObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.FieldObject.prototype.name;

/**
 * @type {!Array<!API.Client.fieldObject_fields>}
 * @export
 */
API.Client.FieldObject.prototype.fields;

/**
 * @type {!boolean}
 * @export
 */
API.Client.FieldObject.prototype.custom;

