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
const carTable = 'car-database';


//------------mainfunction--------------
async function changeStatus(carSelection) {
    const carName = carSelection.car_name;
    const newStatus = carSelection.availability;

    if (!carName || newStatus !== true && newStatus !== false || !carSelection) {
        return util.buildResponse(401, {
            message: 'car name and valid availability is required'
        })
    }

    const dynamoCar = await util.getCar(carTable, carName);
    if (!dynamoCar || !dynamoCar.car_name) {
        return util.buildResponse(403, { message: 'car does not exist'}); //check for username presence
    }

    const params = {
        TableName: carTable,
        Key: {
            "car_name": carName,
        },
        UpdateExpression: "SET availability = :avail",
        ExpressionAttributeValues: {
            ":avail": newStatus
        }
    };

    await dynamodb.update(params).promise().catch(error => {
        console.error('There is an error in updating the availability of the car: ', error);
    });

    return util.buildResponse(200, {
        message: `Successfully updated availability for ${carName}`
    });
}

module.exports.changeStatus = changeStatus;