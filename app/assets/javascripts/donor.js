var app = angular.module("SchedulingModule", ["ngResource"])

app.factory("Donor", ['$resource',function($resource){
	return $resource("/donors/:id", {id: '@id'}, {
		index:   { method: 'GET', isArray: true, responseType: 'json' },
    	update:  { method: 'PUT', responseType: 'json' }
	});
}]);

app.controller("DonorsController", ['$scope','Donor',function($scope, Donor) {
	$scope.addDonor = function(){
		donor = Donor.save($scope.newDonor)
	}
}]);