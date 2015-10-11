var unclesMovies;

unclesMovies = angular.module('unclesMovies', ['ngMaterial', 'ngRoute']);

unclesMovies.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    return $routeProvider.when('/admin-login', {
      templateUrl: 'views/admin-login.jade'
    });
  }
]);

unclesMovies.controller('adminLogin', [
  '$scope', function($scope) {
    return $scope.test = 'this is only a change';
  }
]);
