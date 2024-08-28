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
const carTable = 'car-database';

//------------mainfunction--------------
async function updateCarIP(carInfo) {
    const carName = carInfo.car_name;
    const ipAddress = carInfo.ip_address;
    const ipType = carInfo.ip_type;

    if (!carName || !ipAddress || !carInfo || !ipType) {
        return util.buildResponse(401, {
            message: 'car name, new IP, and IP type are required'
        })
    }

    const dynamoCar = await util.getCar(carTable, carName);
    if (!dynamoCar || !dynamoCar.car_name) {
        return util.buildResponse(403, { message: 'car does not exist' }); //check for username presence
    }

    try {
        // Define the parameters for the update operation
        const params = {
            TableName: carTable,
            Key: {
                'car_name': carName
            },
            UpdateExpression: `set ${ipType} = :ipAddress, availability = :availability`,
            ExpressionAttributeValues: {
                ':ipAddress': ipAddress,
                ':availability': true
            }
        };

        // Update the item in the database
        await dynamodb.update(params).promise();

        console.log(`Successfully updated IP address for ${carName}`);
    } catch (error) {
        console.error('Error updating IP address:', error);
    }

    return util.buildResponse(200, { message: `Successfully updated IP address and availability for ${carName}` });
}

module.exports.updateCarIP = updateCarIP;

