var dir = angular.module('dir', ['ngRoute']);

dir.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/', {
	//template: "<h1>Hello</h1>",
	templateUrl: 'templates/landing',
	controller: 'landingController'
  })
  .when('/directory',  {
	templateUrl: 'templates/directory',
	controller: 'directoryController'
  })
  .when('/profile/:id', {
	templateUrl: 'templates/profile',
	controller: 'profileController'
  });
}]);

