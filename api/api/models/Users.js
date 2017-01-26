/**
 * Users.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

 module.exports = {

 	attributes: {
 		login: {
 			type: 'string'
 		},
 		password: {
 			type: 'string'
 		},
 		pathName: {
 			type: 'string'
 		},
 		lastname: {
 			type : "string",
 			max:'255'
 		},
 		firstname: {
 			type : "string",
 			max:'255'
 		},
 		status: {
 			type : "integer"
 		}
 	}
 };

