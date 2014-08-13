mod = angular.module 'ngBoilerplate', [
  'ui.router'
  'templates'
  'ngBoilerplate.home'
  'ngBoilerplate.about'
]

mod.config ( $stateProvider, $urlRouterProvider ) ->
  $urlRouterProvider.otherwise '/home'

mod.controller 'AppCtrl', ( $scope, $location ) ->
  $scope.$on '$stateChangeSuccess', ( event, toState ) ->
    if toState.data.pageTitle?
      $scope.pageTitle = '#{toState.data.pageTitle} | ngBoilerplate'
