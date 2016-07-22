var app = angular.module("SchedulingModule", ["ngResource", "ui.bootstrap", 'templates', "xeditable"])

app.factory("Donor", function($resource){
	return $resource("donors/:id", {id: '@id'}, {
		index:   { method: 'GET', isArray: true, responseType: 'json' },
    	update:  { method: 'PUT', responseType: 'json' }
	});
})

app.controller("DonorContoller", function($scope, Donor) {
	
})