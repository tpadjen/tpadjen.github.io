---
---

$(function(){
  $(".typed .title").typed({
    strings: ["{{ site.title | split: ' ' | join: ' ^250 ' }}"],
    startDelay: 750,
    typeSpeed: 25
  });
});

angular.module('BraceYourself', [])
  .controller('SearchCtrl', ['$scope', '$http', '$timeout', function($scope, $http, $timeout) {
    $scope.searching = false;
    $scope.menuSelected = false;

    $http.get('/posts.json').success(function(data) {
      $scope.posts = data.posts;
    });

    $scope.toggleSearch = function(event) {
      event.stopPropagation();
      $scope.searching = !$scope.searching;
      $scope.menuSelected = false;

      if ($scope.searching) {
        $timeout(function (){
          angular.element('.search-popup input').trigger('focus');
        });
      }
    };

    $scope.toggleMenu = function(event) {
      if (event) event.stopPropagation();
      $scope.menuSelected = !$scope.menuSelected;
      $scope.searching = false;
    }

    $scope.preventClose = function(event) {
      event.stopPropagation();
    };

    $scope.closeAll = function() {
      $scope.searching = false;
      $scope.menuSelected = false;
    };

    $scope.keyup = function(event) {
      if (event.keyCode == 27) { // escape pressed
        $scope.toggleMenu(null);
      }
    };


  }]);