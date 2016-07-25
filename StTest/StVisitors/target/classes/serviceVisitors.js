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
           var idto = visitor.id;
        return $http.post("http://localhost:8080/Visitors", [idto])
    },

        addVisitor: function(visitor){
        var idto = visitor.id;
        var ime = visitor.firstName;
        var prezime = visitor.lastName;
        var licnaKarta = visitor.idNumber;
        var pristigna = visitor.arriveDate;
        var napushti = visitor.leaveDate;
                return $http.post("http://localhost:8080/Visitors", [ime, prezime, licnaKarta, pristigna, napushti, idto])
        }
   };
});
