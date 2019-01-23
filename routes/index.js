var express = require('express');
var router = express.Router();
var R = require("r-script");
var path = require('path');
/* GET home page. */
router.get('/', function(req, res, next) {

try {
  var here = path.basename(__dirname) + '/test.R';
  var d = R(here).data("hello world", 20)
  .callSync();
  console.log(d);
  //res.send('test');
} catch (error) {
  console.log(error)
}
 

 // console.log(d)
  //console.log(out);
 // res.render('index', { title: 'Express' });
});

module.exports = router;
