dir.controller('profileController', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
  $scope.messages.title = "Listing for";
  $scope.contactId = $routeParams.id;
  $http({method : 'GET', url: '/contacts/' + $scope.contactId + '.json'})
    .success(function(data, status, headers, config) {
      //data
      console.log(data);
      $scope.contact = data;
    });
}]);
