var expect  = require('chai').expect;
var request = require('request');

it('Customer listing page', function (done) {
  var options = {
    url: 'http://10.12.108.11:8000/customers/',
    headers: {
      'Content-Type': 'text/html'
    }
  };
  request.get(options, function (err, res, body) {
    expect(res.statusCode).to.equal(200);
    done();
  });
});


it('Customer add page', function (done) {
  var options = {
    url: 'http://10.12.108.11:8000/customers/add',
    headers: {
      'Content-Type': 'text/html'
    }
  };
  request.get(options, function (err, res, body) {
    expect(res.statusCode).to.equal(200);
    done();
  });
});
