var expect  = require('chai').expect;
var request = require('request');

it('Customer listing page', function (done) {
  var options = {
    url: 'http://ec2-52-202-213-16.compute-1.amazonaws.com:8000/customers/',
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
    url: 'http://ec2-52-202-213-16.compute-1.amazonaws.com:8000/customers/add',
    headers: {
      'Content-Type': 'text/html'
    }
  };
  request.get(options, function (err, res, body) {
    expect(res.statusCode).to.equal(200);
    done();
  });
});
