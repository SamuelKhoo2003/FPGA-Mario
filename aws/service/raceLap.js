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
async function raceLap(racerInfo) {
    const carName = racerInfo.car_name;
    const lapTime = racerInfo.lap_time;
    const currentLap = racerInfo.current_lap;

    if (!carName || !lapTime || !currentLap) {
        return util.buildResponse(401, {
            message: 'car name, lap time and current lap is required'
        })
    }

    const params = {
        TableName: racerTable,
        Key: {
            "car_name": carName,
        },
        UpdateExpression: `SET ${currentLap} = :lapTime`,
        ExpressionAttributeValues: {
            ":lapTime": lapTime
        }
    };

    try {
        await dynamodb.update(params).promise();

        // Scan the column of lapTime and count the number of non-zero and non-undefined values
        const scanParams = {
            TableName: racerTable,
            FilterExpression: `attribute_exists(${currentLap}) AND ${currentLap} <> :zero`,
            ExpressionAttributeValues: {
            ":zero": "0"
            }
        };
        const scanResult = await dynamodb.scan(scanParams).promise();
        const race_position = scanResult.Count;

        // Update the position parameter
        const updatePositionParams = {
            TableName: racerTable,
            Key: {
                "car_name": carName,
            },
            UpdateExpression: "SET car_position = :car_position",
            ExpressionAttributeValues: {
                ":car_position": race_position
            }
        };
        await dynamodb.update(updatePositionParams).promise();

        return util.buildResponse(200, {
            message: `Successfully updated lap time and position for ${carName}`
        });

    } catch (error) {
        console.error('There is an error in updating the lap time and position of the car: ', error);
        return util.buildResponse(500, { message: 'Internal server error' });
    };
}

module.exports.raceLap = raceLap;