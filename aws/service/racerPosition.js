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
async function racerPosition(racerInfo) {
    const carName = racerInfo.car_name;
    const racerName = racerInfo.username;

    if (!carName || !racerName) {
        return util.buildResponse(401, {
            message: 'car name and username is required'
        })
    }

    const params = {
        TableName: racerTable,
        Key: {
            "car_name": carName,
        },
        ProjectionExpression: "car_position",
        FilterExpression: "username = :racerName",
        ExpressionAttributeValues: {
            ':racerName': racerName,
        }
    };

    try {
        const result = await dynamodb.scan(params).promise();
        if (result.Items.length > 0) {
            const position = result.Items[0].car_position;
            if (position === 0) {
                return util.buildResponse(200, { message: 'First lap not completed yet' , "position": position});
            } else {
                return util.buildResponse(200, { message: `${carName} is currently placed: ${position}` , "position": position});
            }
        } else {
            return util.buildResponse(404, { message: 'Position not found' });
        }
    } catch (error) {
        console.error('Error retrieving position:', error);
        return util.buildResponse(500, { message: 'Internal server error' });
    }
}

module.exports.racerPosition = racerPosition;