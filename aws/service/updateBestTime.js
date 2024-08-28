// import aws software dev kit
const AWS = require('aws-sdk');
AWS.config.update({
    region: 'eu-north-1' // choose the region of db to read from
});

// import util for building json package
const util = require('../utils/util');

// create db object
const dynamodb = new AWS.DynamoDB.DocumentClient();

// choose db.table
const userTable = 'user-database';

//------------mainfunction--------------
async function updateBestTime(userInfo) {
    const username = userInfo.username;
    const bestTime = userInfo.best_time;

    if (!username || !bestTime) {
        return util.buildResponse(401, {
            message: 'username and best time is required'
        })
    }

    const dynamoUser = await getUser(username);
    if (!dynamoUser || !dynamoUser.username) {
        return util.buildResponse(403, { message: 'user does not exist' }); //check for username presence
    }

    try {
        // Get the current best time from the database
        const currentBestTime = dynamoUser.best_time;

        // Check if the new best time is less than the current best time
        if (util.timeStringToMilliseconds(bestTime) < util.timeStringToMilliseconds(currentBestTime) || currentBestTime === "0" || currentBestTime === undefined) {
            // Define the parameters for the update operation
            const params = {
                TableName: userTable,
                Key: {
                    'username': username
                },
                UpdateExpression: 'set best_time = :bestTime',
                ExpressionAttributeValues: {
                    ':bestTime': bestTime
                }
            };

            // Update the item in the database
            await dynamodb.update(params).promise();

            console.log(`Successfully updated best time for ${username}`);
            return util.buildResponse(200, { message: `Successfully updated best time for ${username}` });
        } else {
            console.log(`New best time is not less than the current best time for ${username}`);
            return util.buildResponse(200, { message: `New best time is not less than the current best time for ${username}` });
        }
    } catch (error) {
        console.error('Error updating best time:', error);
        return util.buildResponse(500, { message: 'Error updating best time' });
    }
}

async function getUser(username) {
    const params = {
        TableName: userTable,
        Key: {
            "username": username
        },
    };

    try {
        const result = await dynamodb.get(params).promise();
        return result.Item;
    } catch (error) {
        console.error('Error retrieving user:', error);
        return null;
    }
}

module.exports.updateBestTime = updateBestTime;