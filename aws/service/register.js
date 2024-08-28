//import aws software dev kit
const AWS = require('aws-sdk');
AWS.config.update({
    region: 'eu-north-1' //choose the region of db to read from
})

//import encryption module
// const bcrypt = require('bcryptjs');

//import util for building json package
const util = require('../utils/util')

//create db object
const dynamodb = new AWS.DynamoDB.DocumentClient();

//choose db.table
const userTable = 'user-database';



//------------mainfunction--------------
async function register(userInfo) {
    const name = userInfo.name;
    const email = userInfo.email;
    const username = userInfo.username;
    const password = userInfo.password;

    //check all field present
    if ( !name || !email || !username || !password){
        return util.buildResponse(401, {
            message: 'All fields are required'
        });
    }

    //check db present and db.username present
    const dynamoUser = await getUser(username);
    if (dynamoUser && dynamoUser.username) {
        return util.buildResponse(401, {
            message: 'Username already exist in our database. Please choose a different username'
        })
    }
    
    //package user info to JSON
    const user = {
        name: name,
        email: email,
        best_time: "0",
        username: username.toLowerCase().trim(),
        password: password
    }

    //save user info to db, return with with boolean
    const saveUserResponse = await saveUser(user);

    //response to malfunction in writing to server
    if (!saveUserResponse) {
        return util.buildResponse(503, { message: 'Server Error. Please try again later.'});
    }

    //return with successful built user data
    return util.buildResponse(200, { username: username });
}

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

async function saveUser(user) {
    const params = {
        TableName: userTable,
        Item: user
    }
    return await dynamodb.put(params).promise().then(()=> {
        return true;
    }, error => {
        console.error('There is an error saving user: ', error);
    });
}

module.exports.register = register;
