angular.module('app', ['slick'])

class IndexController
  constructor: ($scope) ->
    $scope.name = 'David'
    angular.element(".trm-menu-block-border").hover(@hoverIn, @hoverOut)
  
  hoverIn: ->
    angular.element(".trm-menu-block-border:not(:hover)").toggleClass("trm-menu-block-border-hover")

  hoverOut: ->
    angular.element(".trm-menu-block-border").removeClass("trm-menu-block-border-hover")


IndexController.$inject = ['$scope']
angular.module('app').controller("IndexController", IndexController)


