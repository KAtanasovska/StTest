/**
 * Created by Kristinata on 7/24/2016.
 */
angular
    .module('MyApp')
    .controller("visitorsController", ["serviceVisitors", function($scope, serviceVisitors){

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
            }.catch(function(error){
                debugger;
                $scope.showModal1 = false;
                deleteVisitor=null;

            }));


        };

        $scope.cancel1 = function() {
            $scope.showModal1 = false;

        };

        $scope.downloadVisitors = function(){
            serviceVisitors.getVisitors().then(function(resp){
                debugger;
               $scope.visitors=resp;
            }.catch(function(error){
                debugger;

            }));

            $scope.downloadVisitors();
        }

    }]);
