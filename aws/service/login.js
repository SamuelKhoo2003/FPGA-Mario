//import aws software dev kit
const AWS = require('aws-sdk');
AWS.config.update({
    region: 'eu-north-1' //choose the region of db to read from
})

//import encryption module
// const bcrypt = require('bcryptjs');

//import util for building json package
const util = require('../utils/util');

const auth = require('../utils/auth');
//create db object
const dynamodb = new AWS.DynamoDB.DocumentClient();

//choose db.table
const userTable = 'user-database';


//------------mainfunction--------------
async function login(user) {
    const username = user.username;
    const password = user.password;

    //verifying user input valid details
    if ( !user || !username || !password ){
        return util.buildResponse(401, {
            message: 'username and password are required'
        })
    }

    //retrieve db name
    const dynamoUser = await getUser(username);
    if (!dynamoUser || !dynamoUser.username) {
        return util.buildResponse(403, { message: 'user does not exist'}); //check for username presence
    }

    // verify password
    if (password != dynamoUser.password) {
        return util.buildResponse(403, { message: 'Password is incorrect'});
    }

    //define userInfo and token Object
    const userInfo = {
        username: dynamoUser.username,
        name: dynamoUser.name
    }
    const token = auth.generateToken(userInfo);

    // response to return to client
    const response = {
        user: userInfo,
        token: token
    }
    return util.buildResponse(200, response);
}

//retrieve data from db directly
async function getUser(username) {
    const params = {
        TableName: userTable,
        Key: {
            username: username //key name is defined from DynamoDB
        }
    }

    return await dynamodb.get(params).promise().then(response => {
        return response.Item;
    }, error => {
        console.error('There is an error: ', error)
    })
}

module.exports.login = login;