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
async function getBoostStatus(carInfo) {
    carName = carInfo.car_name;

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

    const params = {
        TableName: racerTable,
        Key: {
            "car_name": carName,
        }
    };

    try {
        const result = await dynamodb.get(params).promise();
        return util.buildResponse(200, {
            boost: result.Item.boost
        })
    } catch (error) {
        return util.buildResponse(500, {
            message: 'error getting boost status'
        })
    }
}

module.exports.getBoostStatus = getBoostStatus;