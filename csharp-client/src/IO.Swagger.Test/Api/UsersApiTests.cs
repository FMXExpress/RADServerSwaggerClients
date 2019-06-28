/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing UsersApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class UsersApiTests
    {
        private UsersApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new UsersApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of UsersApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' UsersApi
            //Assert.IsInstanceOfType(typeof(UsersApi), instance, "instance is a UsersApi");
        }

        
        /// <summary>
        /// Test AddUser
        /// </summary>
        [Test]
        public void AddUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //UserCredentialsObject body = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.AddUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<UseridObject> (response, "response is UseridObject");
        }
        
        /// <summary>
        /// Test DeleteUser
        /// </summary>
        [Test]
        public void DeleteUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string id = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //instance.DeleteUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            
        }
        
        /// <summary>
        /// Test GetUser
        /// </summary>
        [Test]
        public void GetUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string id = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.GetUser(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<UserObject> (response, "response is UserObject");
        }
        
        /// <summary>
        /// Test GetUserFields
        /// </summary>
        [Test]
        public void GetUserFieldsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.GetUserFields(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<List<FieldObject>> (response, "response is List<FieldObject>");
        }
        
        /// <summary>
        /// Test GetUserGroups
        /// </summary>
        [Test]
        public void GetUserGroupsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string id = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.GetUserGroups(id, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<List<GroupName>> (response, "response is List<GroupName>");
        }
        
        /// <summary>
        /// Test GetUsers
        /// </summary>
        [Test]
        public void GetUsersTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //decimal? skip = null;
            //decimal? limit = null;
            //decimal? order = null;
            //string where = null;
            //var response = instance.GetUsers(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret, skip, limit, order, where);
            //Assert.IsInstanceOf<List<UserObject>> (response, "response is List<UserObject>");
        }
        
        /// <summary>
        /// Test LoginUser
        /// </summary>
        [Test]
        public void LoginUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //UserCredentialsObject body = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.LoginUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<UserTokenObject> (response, "response is UserTokenObject");
        }
        
        /// <summary>
        /// Test LogoutUser
        /// </summary>
        [Test]
        public void LogoutUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //instance.LogoutUser(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            
        }
        
        /// <summary>
        /// Test SignupUser
        /// </summary>
        [Test]
        public void SignupUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //UserCredentialsObject body = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.SignupUser(body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<UserSignUpResponseObject> (response, "response is UserSignUpResponseObject");
        }
        
        /// <summary>
        /// Test UpdateUser
        /// </summary>
        [Test]
        public void UpdateUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string id = null;
            //UpdateObject body = null;
            //string xEmbarcaderoApplicationId = null;
            //string xEmbarcaderoAppSecret = null;
            //string xEmbarcaderoMasterSecret = null;
            //var response = instance.UpdateUser(id, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
            //Assert.IsInstanceOf<UpdatedObject> (response, "response is UpdatedObject");
        }
        
    }

}