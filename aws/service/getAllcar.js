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
async function getAllcar() {
    const params = {
        TableName: carTable,
        ProjectionExpression: 'car_name',
        FilterExpression: 'availability = :avail',
        ExpressionAttributeValues: {
            ':avail': true
        }
    }

    return util.buildResponse(200,
        await dynamodb.scan(params).promise().then(response => {
            return response.Items;
        }, error => {
            console.error('There is an error in obtaining table car-database: ', error)
        })
    )
}

module.exports.getAllcar = getAllcar;

