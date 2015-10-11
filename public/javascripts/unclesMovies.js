var unclesMovies;

unclesMovies = angular.module('unclesMovies', ['ngMaterial', 'ngRoute', 'ngResource']);

unclesMovies.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    console.log('$routeProvider', $routeProvider, '$locationProvider', $locationProvider);
    return $routeProvider.when('/', {
      templateUrl: 'partials/index'
    }).when('/admin-login', {
      templateUrl: 'partials/admin-login'
    });
  }
]);

unclesMovies.controller('adminLogin', [
  '$scope', function($scope) {
    return $scope.test = 'this is only a change';
  }
]);
