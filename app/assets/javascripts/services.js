var contactsServices = angular.module('contactsServices', ['ngResource']);

contactsServices.factory('Contact', ['$resource',
  function($resource){
    return $resource('contacts/:id.json', {} {
      get: {method:'GET'};
    });
  }]);