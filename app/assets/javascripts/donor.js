var app = angular.module("SchedulingModule", ["ngResource"])

app.factory("Donor", ["$resource",function($resource){
	return $resource("/donors/:id", {id: '@id'}, {
		index:   { method: 'GET', isArray: true, responseType: 'json' },
    	update:  { method: 'PUT', responseType: 'json' }
	});
}]);

app.controller("DonorsController", ["$window","$scope","Donor",function($window,$scope, Donor) {
	alert("HELLO1!");
	$scope.addDonor = function(){
		donor = Donor.save($scope.newDonor);
		$window.location.href = '/';
	}
}]);