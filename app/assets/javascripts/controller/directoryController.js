dir.controller('directoryController', ['$scope', '$http', function($scope, $http) {
	$scope.contacts = [];
	$http({method : 'GET', url: '/contacts.json'})
		.success(function(data, status, headers, config) {
			//data
			console.log(data);
			$scope.contacts = data;
		});

}]);
