unclesMovies = angular.module 'unclesMovies', ['ngMaterial','ngRoute']

unclesMovies.config ['$routeProvider','$locationProvider', ($routeProvider,$locationProvider) ->
	$locationProvider.html5Mode true
	$routeProvider
	.when '/admin-login',{
		templateUrl:'views/admin-login.jade'
	}
]

unclesMovies.controller 'adminLogin', ['$scope', ($scope) ->
	$scope.test = 'this is only a change'
]