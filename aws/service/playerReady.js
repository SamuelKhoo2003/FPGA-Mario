//import aws software dev kit
const AWS = require('aws-sdk');
AWS.config.update({
    region: 'eu-north-1' //choose the region of db to read from
})

//import util for building json package
const util = require('../utils/util')

//create db object
const dynamodb = new AWS.DynamoDB.DocumentClient();

//choose db.table
const racerTable = 'race-database';

//------------mainfunction--------------
async function playerReady(playerInfo) {
    const carName = playerInfo.car_name;
    const userName = playerInfo.username;

    // check all fields present
    if (!carName || !userName) {
        return util.buildResponse(401, {
            message: 'car name and username is required'
        })
    }

    // check if car is already registered
    const dynamoRacer = await util.getRacer(racerTable, carName);
    if (dynamoRacer && dynamoRacer.car_name) {
        return util.buildResponse(401, {
            message: 'Car is already registered. Please choose a different car'
        })
    }

    const racer = {
        car_name: carName,
        username: userName,
        car_position: 0,
        starttime: "0",
        best_time: "0",
        lap1: "0",
        lap2: "0",
        endtime: "0",
        boost: false
    }

    const saveRacerResponse = await saveRacer(racer);

    if (!saveRacerResponse) {
        return util.buildResponse(503, {
            message: 'Server Error. Please try again later.'
        });
    }

    return util.buildResponse(200, {
        message: 'Player registered successfully'
    });
}

async function saveRacer(racer) {
    const params = {
        TableName: racerTable,
        Item: racer
    };

    try {
        await dynamodb.put(params).promise();
        return true;
    } catch (error) {
        return false;
    }
}

module.exports.playerReady = playerReady;