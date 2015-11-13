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

    $http.get('/posts.json').success(function(data) {
      $scope.posts = data.posts;
    });

    $scope.toggleSearch = function(event) {
      event.stopPropagation();
      $scope.searching = !$scope.searching;

      if ($scope.searching) {
        $timeout(function (){
          angular.element('.search-popup input').trigger('focus');
        });
      }
    };

    $scope.preventClose = function(event) {
      event.stopPropagation();
    };


  }]);