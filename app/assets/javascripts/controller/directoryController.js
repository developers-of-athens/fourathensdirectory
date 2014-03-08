dir.controller('directoryController', ['$scope', '$http', function($scope, $http) {
	$http({method : 'GET', url: '/contacts.json'})
		.success(function(data, status, headers, config) {
			//data
			console.log(data);
		});
}]);
