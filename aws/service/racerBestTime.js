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
async function racerBestTime(bestTimeInfo) {
    const carName = bestTimeInfo.car_name;

    if (!carName) {
        return util.buildResponse(401, {
            message: 'car name is required'
        });
    }

    try {
        const read_params = {
            TableName: racerTable,
            Key: {
                "car_name": carName
            }
        };

        const data = await dynamodb.get(read_params).promise();

        // mapping values e.g. starttime = data.Item.starttime (below is equivalent)
        const { starttime, lap1, lap2, endtime } = data.Item;

        const startTimeMs = util.timeStringToMilliseconds(starttime);
        const lap1Ms = util.timeStringToMilliseconds(lap1);
        const lap2Ms = util.timeStringToMilliseconds(lap2);
        const endTimeMs = util.timeStringToMilliseconds(endtime);

        const bestTimeMs = Math.min(lap1Ms-startTimeMs, lap2Ms-lap1Ms, endTimeMs-lap2Ms);

        const update_params = {
            TableName: racerTable,
            Key: {
                "car_name": carName
            },
            UpdateExpression: "SET best_time = :bestTime",
            ExpressionAttributeValues: {
                ":bestTime": util.parseTimestamp(bestTimeMs)
            }
        };

        await dynamodb.update(update_params).promise().catch(error => {
            console.error('There is an error in updating the best time of the car: ', error);
        });

        return util.buildResponse(200, {
            message: `Successfully updated best time for ${carName}`
        });
    } catch (error) {
        console.error('Error updating best time:', error);
        return util.buildResponse(500, {
            message: 'Error updating best time'
        });
    }

}


module.exports.racerBestTime = racerBestTime;