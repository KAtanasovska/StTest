/**
 * Created by Kristinata on 7/24/2016.
 */
var flag = false;
angular
    .module('MyApp')
    .constant('initUrl', 'http://localhost:8080/Visitors')
    .controller("visitorsController", ['$scope', 'serviceVisitors', function($scope, serviceVisitors, $http){
        //add new visitor button clicked
        $scope.open = function() {
            $scope.showModal = true;

        };
        //add clicked (for visitor)
        $scope.ok = function(visitor) {
        serviceVisitors.addVisitor(visitor);
          /*  $http.post("http://localhost:8080/Visitors",{'firstName': $scope.firstName,
                'lastName': $scope.lastName,
                'idNumber': $scope.idNumber,
                'arriveDate': $scope.arriveDate,
                'leaveDate': $scope.arriveDate});
                */
            $scope.showModal = false;

            };


        $scope.cancel = function() {
            $scope.showModal = false;

        };

        $scope.openEdit = function(visitor){

            $scope.showModal = true;
            $scope.visitor = visitor;

        }
        //delete button
        $scope.open1 = function(visitor) {

            $scope.theVisitor = visitor;
            $scope.showModal1 = true;

        };
        //delete confirmation button clicked
        $scope.ok1 = function() {
            flag = true;

            serviceVisitors.deleteVisitor(visitor).then(function(){

                $scope.showModal1 = false;
                //deleteVisitor=null;
                //$scope.deleteVisitor = resp.data;
                $scope.downloadVisitors();
            });


        };

        $scope.cancel1 = function() {
            $scope.showModal1 = false;

        };

        $scope.downloadVisitors = function(){

            serviceVisitors.getVisitors().then(function(resp){

               $scope.visitors=resp.data;
            });


        }
        $scope.downloadVisitors();

    }]);
