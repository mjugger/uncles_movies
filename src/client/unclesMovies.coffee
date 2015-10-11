unclesMovies = angular.module 'unclesMovies', ['ngMaterial','ngRoute','ngResource']

unclesMovies.config ['$routeProvider','$locationProvider', ($routeProvider,$locationProvider) ->
	$locationProvider.html5Mode true
	console.log '$routeProvider',$routeProvider,'$locationProvider',$locationProvider
	$routeProvider
	.when '/',{
		templateUrl:'partials/index'
	}
	.when '/admin-login',{
		templateUrl:'partials/admin-login'
	}
]

unclesMovies.controller 'adminLogin', ['$scope', ($scope) ->
	$scope.test = 'this is only a change'
]