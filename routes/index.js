var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('layout', { title: 'Express' });
});

router.get('/partials/:ngRoute', function(req, res, next) {
	res.render('partials/'+req.params.ngRoute);
});


module.exports = router;
