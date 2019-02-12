var express = require('express');
var router = express.Router();

var path = require('path');
const ps = require('python-shell');

router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});

router.get('/api/io2', function(req, res, next) {
  res.setHeader('Content-Type', 'application/json');
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

  try {
    var a = req.query.a;
    var b = req.query.b;
    var c = req.query.c;  
    var d = req.query.d;
    let options = {
      mode: 'text',
      pythonOptions: ['-u'], 
      scriptPath: 'pyscript/lib',
      args: [a, b ,c, d]
    };
     
    ps.PythonShell.run('code.py', options, function (err, results) {
      var resp;
      var error = null;
      if (err) {
        console.log(err) 
        resp = null;
        error = err;
      }else{
        resp = results[0]
      }
      res.send(JSON.stringify({ response: JSON.parse(resp), error: error}));
     
    });
  } catch (error) {
    next(error);
    console.log( " hubo un error" , error)
  }
 
});

module.exports = router;
