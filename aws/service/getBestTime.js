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
async function getBestTime(userInfo) {
    const username = userInfo.username;

    const dynamoUser = await getUser(username);
    if (!dynamoUser || !dynamoUser.username) {
        return util.buildResponse(403, { message: 'user does not exist'}); //check for username presence
    }

    const best_time = dynamoUser.best_time;
    return util.buildResponse(200, { best_time: best_time });

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

module.exports.getBestTime = getBestTime;