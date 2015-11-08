var artApp = angular.module('artApp', []);

//artApp.config(function($interpolateProvider){
//    $interpolateProvider.startSymbol('{({').endSymbol('})}');
//});

artApp.controller('mycontroller', ['$scope', '$http', '$filter',
    function($scope, $http, $filter){

        $scope.submit = function(){
        var call = {
            method: 'POST',
            url: '/bid',
            data: {
                "bid": $scope.bid,
            },
            headers: {
                'Content-Type': 'application/json',
            }
        };
        $http(call)
            .success(function(data){
                var response = angular.fromJson(data);
                $scope.artists = response;
            });
        };

    }]);