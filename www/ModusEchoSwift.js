var exec = require('cordova/exec');

exports.helloWorldInJS = function(arg0, arg1, success, error) {
  exec(success, error, 'ModusEchoSwiftFeature', 'helloWorldInSwift', [arg0, arg1]);
};