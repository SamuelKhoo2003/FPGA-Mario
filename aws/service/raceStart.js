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
async function raceStart(startInfo) {
    const startTime = startInfo.starttime;

    if (!startTime) {
        return util.buildResponse(401, {
            message: 'start time is required'
        })
    }

    try {
        // Read the table to gather a list of car_name
        const scanParams = {
            TableName: racerTable,
            ProjectionExpression: 'car_name'
        };
        const scanResult = await dynamodb.scan(scanParams).promise();
        const carNames = scanResult.Items.map(item => item.car_name);

        // Update the starttime for each car_name
        const updatePromises = carNames.map(carName => {
            const updateParams = {
                TableName: racerTable,
                Key: {
                    "car_name": carName
                },
                UpdateExpression: "SET starttime = :startTime",
                ExpressionAttributeValues: {
                    ":startTime": startTime
                }
            };
            return dynamodb.update(updateParams).promise();
        });

        await Promise.all(updatePromises);

        return util.buildResponse(200, {
            message: 'Start time updated successfully'
        });
    } catch (error) {
        console.error('Error updating start time:', error);
        return util.buildResponse(500, {
            message: 'Error updating start time'
        });
    }
}

module.exports.raceStart = raceStart;