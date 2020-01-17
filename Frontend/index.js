const tixUrl = 'https://data.cityofnewyork.us/Recreation/Broadway-Events-Calendar/gs56-euca'



function initLoad() {
    fetch(tixUrl)
      .then(r => r.json())
      .then(console.log)
}
