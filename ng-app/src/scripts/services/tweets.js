'use strict';
/** tweets service, load previous tweets and receives subsequent live tweets for given query */
app.controller("tweeplusCtrl", function($scope,$http){
	$scope.message = "Angular Rocks! 123";

	var url = 'http://localhost:3000/api/tweets.json';
	$http.jsonp(url + '?callback=JSON_CALLBACK').success(function (data) {
	$scope.posts=data;
	
	});
  
   
});