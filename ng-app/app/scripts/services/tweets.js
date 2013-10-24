'use strict';

/** tweets service, load previous tweets and receives subsequent live tweets for given query */
app.controller("tweeplusCtrl", function($scope,$http){
	$scope.message = "Angular Rocks! 123";
  var url = '//localhost:3000/tweet_stores';
 $http.jsonp(url + '?callback=JSON_CALLBACK').success(function (data) {
  $scope.posts=data;
});
});

