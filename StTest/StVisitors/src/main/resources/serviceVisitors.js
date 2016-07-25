/**
 * Created by Kristinata on 7/24/2016.
 */

angular.module('MyApp')
.service('serviceVisitors',function($http) {
   return {
       getVisitors: function(){

           return $http.get('http://localhost:8080/Visitors')
    },
       deleteVisitor: function(visitor){

        return $http.post("http://localhost:8080/Visitors", {"visitor" :visitor})
    },
       editVisitor: function(visitor){
        return $http.post("http://localhost:8080/Visitors/edit", {"firstName": visitor.firstName, "lastName": visitor.lasrName,"idNumber": visitor.idNumber, "arriveDate": visitor.arriveDate, "leaveDate": visitor.leaveDate })
    },
        addVisitor: function(visitor){
        var ime = visitor.firstName;
        var prezime = visitor.lastName;
        var licnaKarta = visitor.idNumber;
        var pristigna = visitor.arriveDate;
        var napushti = visitor.leaveDate;
                return $http.post("http://localhost:8080/Visitors", [ime, prezime, licnaKarta, pristigna, napushti])
        }
   };
});
