const getAllcarService = require('./service/getAllcar');
const selectCarService = require('./service/selectCar');
const registerService = require('./service/register');
const loginService = require('./service/login');
const updateIPService = require('./service/updateIP');
const updateBestTimeService = require('./service/updateBestTime');
const changeStatusService = require('./service/changeStatus');
const racerPositionService = require('./service/racerPosition');
const raceStartService = require('./service/raceStart');
const raceLapService = require('./service/raceLap');
const playerReadyService = require('./service/playerReady');
const leaderboardService = require('./service/leaderboard');
const racerBestTimeService = require('./service/racerBestTime');
const endGameService = require('./service/endGame');
const getBestTimeService = require('./service/getBestTime');
const changeBoostService = require('./service/changeBoost');
const getBoostStatusService = require('./service/getBoostStatus');
const getIPService = require('./service/getIP');
const util = require('./utils/util');

const healthPath = '/health';
const selectCarPath = '/selectCar';
const getAllcarPath = '/getAllcar';
const leaderBoardPath = '/leaderboard';
const registerPath = '/register';
const loginPath = '/login';
const updateIPPath = '/updateIP';
const updateBestTimePath = '/updateBestTime';
const changeStatusPath = '/changeStatus';
const racerPositionPath = '/racerPosition';
const raceStartPath = '/raceStart';
const raceLap = '/raceLap';
const playerReady = '/playerReady';
const racerBestTime = '/racerBestTime';
const endGame = '/endGame';
const getBestTimePath = '/getBestTime';
const changeBoostPath = '/changeBoost';
const getBoostStatusPath = '/getBoostStatus';
const getIPPath = '/getIP';

exports.handler = async (event) => {
  console.log('Request Event: ',event);
  let response;
  switch(true) {
    case event.httpMethod === 'POST' && event.path === getBestTimePath:
      const getBestTimeBody = JSON.parse(event.body);
      response = await getBestTimeService.getBestTime(getBestTimeBody);
      break;
    case event.httpMethod === 'POST' && event.path === endGame:
      response = await endGameService.endGame();
      break;
    case event.httpMethod === 'POST' && event.path === racerPositionPath:
      const racerPositionBody = JSON.parse(event.body);
      response = await racerPositionService.racerPosition(racerPositionBody);
      break;
    case event.httpMethod === 'POST' && event.path === raceStartPath:
      const raceStartBody = JSON.parse(event.body);
      response = await raceStartService.raceStart(raceStartBody);
      break;
    case event.httpMethod === 'POST' && event.path === raceLap:
      const raceLapBody = JSON.parse(event.body);
      response = await raceLapService.raceLap(raceLapBody);
      break;
    case event.httpMethod === 'POST' && event.path === racerBestTime:
      const racerBestTimeBody = JSON.parse(event.body);
      response = await racerBestTimeService.racerBestTime(racerBestTimeBody);
      break;
    case event.httpMethod === 'POST' && event.path === changeBoostPath:
      const changeBoostBody = JSON.parse(event.body);
      response = await changeBoostService.changeBoost(changeBoostBody);
      break;
    case event.httpMethod === 'POST' && event.path === getBoostStatusPath:
      const getBoostStatusBody = JSON.parse(event.body);
      response = await getBoostStatusService.getBoostStatus(getBoostStatusBody);
      break;
    case event.httpMethod === 'POST' && event.path === playerReady:
      const playerReadyBody = JSON.parse(event.body);
      response = await playerReadyService.playerReady(playerReadyBody);
      break;
    case event.httpMethod === 'POST' && event.path === selectCarPath:
      const selectCarBody = JSON.parse(event.body);
      response = await selectCarService.selectCar(selectCarBody);
      break;
    case event.httpMethod === 'POST' && event.path === changeStatusPath:
      const changeStatusBody = JSON.parse(event.body);
      response = await changeStatusService.changeStatus(changeStatusBody);
      break;
    case event.httpMethod === 'GET' && event.path === getAllcarPath:
      response = await getAllcarService.getAllcar();
      break;
    case event.httpMethod === 'POST' && event.path === getIPPath:
      const getIPBody = JSON.parse(event.body);
      response = await getIPService.getIP(getIPBody);
      break;
    case event.httpMethod === 'GET' && event.path === healthPath:
      response = util.buildResponse(200);
      break;
    case event.httpMethod === 'GET' && event.path === leaderBoardPath:
      response = await leaderboardService.fetchLeaderboard();
      break;
    case event.httpMethod === 'POST' && event.path === registerPath:
      const registerBody = JSON.parse(event.body);
      response = await registerService.register(registerBody);
      break;
    case event.httpMethod === 'POST' && event.path === loginPath:
      const loginBody = JSON.parse(event.body);
      response = await loginService.login(loginBody);
      break;
    case event.httpMethod === 'POST' && event.path === updateIPPath:
      const updateIPBody = JSON.parse(event.body);
      response = await updateIPService.updateCarIP(updateIPBody);
      break;
    case event.httpMethod === 'POST' && event.path === updateBestTimePath:
      const updateBestTimeBody = JSON.parse(event.body);
      response = await updateBestTimeService.updateBestTime(updateBestTimeBody);
      break;
    default:
      response = util.buildResponse(404, '404 Not Found');
  }
  return response;
};
