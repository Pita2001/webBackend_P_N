const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  
  var connection
  function kapcsolat(){
    var mysql = require('mysql')

    connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'web_zarodoga'
    })
    
    connection.connect()
    
  }
  
  
  app.get('/film', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from film', function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
  })


  app.post('/szavazatfelvitel', (req, res) => {
    kapcsolat()
    connection.query('insert into szavazat values (null,'+req.body.bevitel1+')', function (err, rows, fields) {
      if (err) {
        console.log("Hiba!")
        res.send("Hiba!")
      }
      else {
      console.log("Szavazatát rögzítettük!")
      res.send("Szavazatát rögzítettük!")
    }
    })
    connection.end()
  })
app.post('/keres', (req, res) => {
  kapcsolat()    
    let parancs='SELECT * from film where film_cim like "%'+req.body.bevitel1+'%"'
    connection.query(parancs, function (err, rows, fields) {
      if (err) {
        console.log("Hiba")
      }
    else{
      console.log(rows)
      res.send(rows)
    }
     
    })
    
    connection.end()
 })

 //Saját backend végpont

 app.get('/autok', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM autok', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});

app.get('/marka', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM marka', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});




app.get('/diagram', (req, res) => {
  kapcsolat()
  connection.query(`SELECT auto_modell, COUNT(*) as darabszam
  FROM szavazat_auto
  INNER JOIN autok
  ON autok.auto_id=szavazat_auto.szavazat_a
  GROUP BY auto_id`, (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});
 
app.delete('/torles_auto', (req, res) => {
  kapcsolat()
  connection.query(`DELETE FROM autok WHERE auto_id=${req.body.bevitel1}`, function (err, rows, fields) {
    if (err) {
      console.log("Hiba!")
      res.send("Hiba!")
    }
    else {
    console.log("A törlés sikerült!")
    res.send("A törlés sikerült!")
  }
  })
  connection.end()
})

app.delete('/torles_marka', (req, res) => {
  kapcsolat()
  connection.query(`DELETE FROM marka WHERE marka_id=${req.body.bevitel2}`, function (err, rows, fields) {
    if (err) {
      console.log("Hiba!")
      res.send("Hiba!")
    }
    else {
    console.log("A törlés sikerült!")
    res.send("A törlés sikerült!")
  }
  })
  connection.end()
})




/////Nikiééééééé

app.get('/motorok', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM motorok', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});

app.get('/marka_motorok', (req, res) => {
  kapcsolat()
  connection.query('SELECT * FROM marka_motorok', (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});

app.get('/diagram_nikie', (req, res) => {
  kapcsolat()
  connection.query(`SELECT motor_modell, COUNT(*) as darabszam
  FROM szavazat_motor
  INNER JOIN motorok
  ON motorok.motor_id=szavazat_motor.szavazat_m
  GROUP BY motor_id`, (err, rows, fields) => {
    if (err) {
      console.error('Hiba a lekérdezés során: ' + err.stack);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(rows);
    res.send(rows);
  });
});

app.delete('/torles_motorok', (req, res) => {
  kapcsolat()
  connection.query(`DELETE FROM motorok WHERE motor_id=${req.body.bevitel1}`, function (err, rows, fields) {
    if (err) {
      console.log("Hiba!")
      res.send("Hiba!")
    } else {
      console.log("A törlés sikerült!")
      res.send("A törlés sikerült!")
    }
  })
  connection.end()
})

app.delete('/torles_marka_motorok', (req, res) => {
  kapcsolat()
  connection.query(`DELETE FROM marka_motorok WHERE marka_id=${req.body.bevitel2}`, function (err, rows, fields) {
    if (err) {
      console.log("Hiba!")
      res.send("Hiba!")
    } else {
      console.log("A törlés sikerült!")
      res.send("A törlés sikerült!")
    }
  })
  connection.end()
})
  



};
