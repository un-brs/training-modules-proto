angular.module('app', ['slick'])

class IndexController
  constructor: ($scope) ->
    $scope.name = 'David'
    angular.element(".trm-menu-block-border").hover(@hover)
  hover: ->
    angular.element(".trm-menu-block-border:not(:hover)").toggleClass("trm-menu-block-border-hover")

IndexController.$inject = ['$scope']
angular.module('app').controller("IndexController", IndexController)


