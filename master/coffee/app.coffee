angular.module('app', ['slick'])

class IndexController
  constructor: ($scope) ->
    $scope.name = 'David'
    angular.element(".trm-menu-block-part").hover(@hoverIn, @hoverOut)

  hoverIn: ->
    console.log "in"
    angular.element(".trm-menu-block-part:not(:hover)").toggleClass("trm-menu-block-part-hover")

  hoverOut: ->
    console.log "out"
    angular.element(".trm-menu-block-part").removeClass("trm-menu-block-part-hover")


IndexController.$inject = ['$scope']
angular.module('app').controller("IndexController", IndexController)
