const AWS = require('aws-sdk');
AWS.config.update({
  region: 'eu-north-1' //choose the region of db to read from
})

const dynamodb = new AWS.DynamoDB.DocumentClient();

function buildResponse(statusCode, body) {
  return {
    statusCode: statusCode,
    headers: {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(body)
  }
}

async function getCar(carTable, carName) {
  const params = {
    TableName: carTable,
    Key: {
      'car_name': carName //key name is defined from DynamoDB
    }
  };

  try {
    const response = await dynamodb.get(params).promise();
    return response.Item;
  } catch (error) {
    console.error('There is an error: ', error);
    throw error;
  }
}

async function getRacer(racerTable, carName) {
  const params = {
      TableName: racerTable,
      Key: {
          "car_name": carName
      }
  };

  try {
      const racer = await dynamodb.get(params).promise();
      return racer.Item;
  } catch (error) {
      return null;
  }
}

function parseTimestamp(timestamp) {
  const millisecond = timestamp % 1000;
  const seconds = Math.floor(timestamp / 1000) % 60;
  const minutes = Math.floor(timestamp / (1000 * 60)) % 60;
  const hours = Math.floor(timestamp / (1000 * 60 * 60));

  const paddedHours = hours.toString().padStart(2, '0');
  const paddedMinutes = minutes.toString().padStart(2, '0');
  const paddedSeconds = seconds.toString().padStart(2, '0');
  const paddedMilliseconds = millisecond.toString().padStart(3, '0');

  // Format the timestamp into hour:minute:second.millisecond format
  return `${paddedHours}:${paddedMinutes}:${paddedSeconds}.${paddedMilliseconds}`;
}

function timeStringToMilliseconds(timeString) {
  const [time, milliseconds] = timeString.split('.');
  const [hours, minutes, seconds] = time.split(':').map(parseFloat);
  return (hours * 60 * 60 * 1000) + (minutes * 60 * 1000) + (seconds * 1000) + parseFloat(milliseconds || 0);
}


module.exports = {
  buildResponse,
  getCar,
  getRacer,
  parseTimestamp,
  timeStringToMilliseconds
};
