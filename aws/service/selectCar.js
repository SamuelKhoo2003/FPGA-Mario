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
async function selectCar(carSelection) {
    const carName = carSelection.car_name;

    if (!carName) {
        return util.buildResponse(401, {
            message: 'car name is required'
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
        ProjectionExpression: "ip_web, ip_tcp, availability", // include availability in the projection
        FilterExpression: "availability = :avail",
        ExpressionAttributeValues: {
            ":avail": true
        }
    };

    const dynamoCarRes = await dynamodb.get(params).promise().then(response => {
        const car = response.Item;
        if (!car || !car.availability) {
            return null; // return null if car or availability is not found
        }
        return {
            // ip_web: car.ip_web,
            ip_tcp: car.ip_tcp
        };
    }, error => {
        console.error('There is an error in obtaining table car-database: ', error)
    });

    if (!dynamoCarRes) {
        return util.buildResponse(403, { message: 'car is not available'}); // return error response if car is not available
    }

    const updateParams = {
        TableName: carTable,
        Key: {
            "car_name": carName,
        },
        UpdateExpression: "SET availability = :avail",
        ExpressionAttributeValues: {
            ":avail": false
        }
    };

    await dynamodb.update(updateParams).promise().catch(error => {
        console.error('There is an error in updating the availability of the car: ', error);
    });

    return util.buildResponse(200, dynamoCarRes);
}

module.exports.selectCar = selectCar;
