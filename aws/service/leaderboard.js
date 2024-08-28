const AWS = require('aws-sdk');
const util = require('../utils/util');

// Import the AWS SDK
AWS.config.update({
  region: 'eu-north-1' // Choose the region of the database to read from
});

// Import the utility for building JSON packages

// Create a DynamoDB object
const dynamodb = new AWS.DynamoDB.DocumentClient();

// Choose the database table
const userTable = 'user-database';

//------------mainfunction--------------
async function fetchLeaderboard() {
  try {
    // Query the DynamoDB table to get all items with non-zero and non-undefined best_time
    const params = {
      TableName: userTable,
      FilterExpression: 'best_time <> :zero AND attribute_exists(best_time)',
      ExpressionAttributeValues: {
        ':zero': '0'
      }
    };
    const result = await dynamodb.scan(params).promise();

    // Sort the items by best_time in ascending order
    const sortedItems = result.Items.sort((a, b) => util.timeStringToMilliseconds(a.best_time) - util.timeStringToMilliseconds(b.best_time));

    // Return the sorted leaderboard
    const finalLeaderboard = sortedItems.map(item => ({
      username: item.username,
      best_time: item.best_time
    }));
    return util.buildResponse(200, finalLeaderboard);
  } catch (error) {
    console.error('Error fetching leaderboard:', error);
    throw error;
  }
}

// Export the fetchLeaderboard function as a module
module.exports.fetchLeaderboard = fetchLeaderboard;

