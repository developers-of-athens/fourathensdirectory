var dir = angular.module('dir', ['ngRoute']);

dir.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/', {
	templateUrl: 'templates/landing',
	controller: 'landingController'
  })
  .when('/directory',  {
	templateUrl: 'templates/directory',
	controller: 'directoryController'
  })
  .when('/map', {
	templateUrl: 'templates/map',
	controller: 'mapController'
  })
  .otherwise({
	redirectTo: '/'
  });
}]);
