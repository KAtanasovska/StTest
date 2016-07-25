/**
 * Created by Kristinata on 7/24/2016.
 */
angular
    .module('MyApp')
    .constant('initUrl', 'http://localhost:8080/Visitors')
    .controller("visitorsController", ['$scope', 'serviceVisitors', function($scope, serviceVisitors){

        $scope.open = function() {
            $scope.showModal = true;

        };

        $scope.ok = function() {
            $scope.showModal = false;

        };

        $scope.cancel = function() {
            $scope.showModal = false;

        };

        $scope.open1 = function(id) {
            $scope.deleteVisitor = id;
            $scope.showModal1 = true;

        };

        $scope.ok1 = function() {
            serviceVisitors.deleteVisitor($scope.deleteVisitor).then(function(resp){
                debugger;
                $scope.showModal1 = false;
                deleteVisitor=null;
                $scope.downloadVisitors();
            });


        };

        $scope.cancel1 = function() {
            $scope.showModal1 = false;

        };
        debugger;
        $scope.downloadVisitors = function(){

            serviceVisitors.getVisitors().then(function(resp){
                debugger;
               $scope.visitors=resp;
            });


        }
        $scope.downloadVisitors();

    }]);
