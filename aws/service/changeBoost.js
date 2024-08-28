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
async function changeBoost(boostInfo) {
    carName = boostInfo.car_name;
    boostStatus = boostInfo.boost_status;

    if (!carName) {
        return util.buildResponse(401, {
            message: 'car name is required'
        })
    }

    const dynamoRacer = await util.getRacer(racerTable, carName);
    if (!dynamoRacer || !dynamoRacer.car_name) {
        return util.buildResponse(403, {
            message: 'Car is not registered'
        })
    }

    const updateBoostParams = {
        TableName: racerTable,
        Key: {
            "car_name": carName,
        },
        UpdateExpression: "SET boost = :boost_status",
        ExpressionAttributeValues: {
            ":boost_status": boostStatus
        }
    };

    try {
        await dynamodb.update(updateBoostParams).promise();
        return util.buildResponse(200, {
            message: 'boost status updated'
        })
    } catch (error) {
        return util.buildResponse(500, {
            message: 'error updating boost status'
        })
    }
}

module.exports.changeBoost = changeBoost;
