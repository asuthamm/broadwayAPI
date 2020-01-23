function fetchData(){
    let data = fetch('https://randomuser.me/api/')
      .then( res => res.json() )
      .then(obj => obj.results.forEach(parseData))
  }
   
  fetchData()
  
  function parseData(usr) {
    console.log(usr.gender)
    console.log(`${usr.name.first} ${usr.name.last}`)
    console.log(`${usr.location.country}`)
    console.log(`${usr.email}`)
    console.log(`${usr.login.username}`)
    console.log(`${usr.dob.age}`)
    console.log(`${usr.picture.large}`)
  }
  