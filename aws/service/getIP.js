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
// const racerTable = 'race-database';

//------------mainfunction--------------
async function getIP(carInfo) {
    carName = carInfo.car_name;
    ipType = carInfo.ip_type;

    if (!carName || !ipType) {
        return util.buildResponse(401, {
            message: 'car name and IP type is required'
        })
    }

    const dynamoCar = await util.getCar(carTable, carName);
    if (!dynamoCar || !dynamoCar.car_name) {
        return util.buildResponse(403, {
            message: 'Car does not exist!'
        })
    }

    const carIP = dynamoCar[ipType];
    if (!carIP) {
        return util.buildResponse(403, {
            message: 'IP type does not exist!'
        })
    }

    return util.buildResponse(200, {
        ip: carIP
    })

}

module.exports.getIP = getIP;
