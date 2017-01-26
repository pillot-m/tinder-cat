/*global angular:true */
var cardTypes;
angular.module('controller.cards', ['ionic', 'ionic.contrib.ui.tinderCards2'])

.config(function($stateProvider, $urlRouterProvider) {

})

.directive('noScroll', function($document) {

	return {
		restrict: 'A',
		link: function($scope, $element, $attr) {

			$document.on('touchmove', function(e) {
				e.preventDefault();
			});
		}
	};
})
.controller('CardsCtrl', function($scope, TDCardDelegate, $timeout, $http) {
	$scope.result = "";
	$http.get('http://localhost:1337/users')
	.success(function(data, status, headers,config){
		console.log('data success');
		console.log(data);
		 $scope.cards = {
			master : data,
			active : data,
			discards: [],
			liked: [],
			disliked: []
		};
	})
	.error(function(data, status, headers,config){
		console.log('data error');
	});
	$scope.cardDestroyed = function(index) {
		$scope.cards.active.splice(index, 1);
	};

	$scope.addCard = function() {
		var newCard = cardTypes[0];
		$scope.cards.active.push(angular.extend({}, newCard));
	};

$scope.$on('removeCard', function(event, element, card) {
	var discarded = $scope.cards.master.splice($scope.cards.master.indexOf(card), 1);
	$scope.cards.discards.push(discarded);
});

$scope.liked = function(card, index){
	$http.put("http://localhost:1337/users/" + card.id,  {'status': '1'});
	console.log(card.id);
	$scope.cards.liked.push(card);
	$scope.cards.active.splice(index, 1);
};
$scope.cancel = function(card, index){
	$http.put("http://localhost:1337/users/" + card.id,  {'status': '4'});
	$scope.cards.liked.push(card);
	$scope.cards.active.splice(index, 1);

};

$scope.disliked = function(card, index){
	$http.put("http://localhost:1337/users/" + card.id,  {'status': '0'});
	$scope.cards.disliked.push(card);
	$scope.cards.active.splice(index, 1);
};

$scope.cardSwipedLeft = function(index, card) {
	$http.put("http://localhost:1337/users/" + card.id,  {'status': '0'});
	console.log('LEFT SWIPE');
	card = $scope.cards.active[index];
	$scope.cards.disliked.push(card);
};
$scope.cardSwipedRight = function(index, card) {
	$http.put("http://localhost:1337/users/" + card.id,  {'status': '1'});
	console.log('RIGHT SWIPE');
	card = $scope.cards.active[index];
	$scope.cards.liked.push(card);
};

})

.controller('CardCtrl', function($scope, TDCardDelegate) {

});