/**
 * Created by Kristinata on 7/24/2016.
 */

angular.module('MyApp')
.service('serviceVisitors',function($http) {
   return {
       getVisitors: function(){

           return $http.get('http://localhost:8080/Visitors')
    },
       deleteVisitor: function(id){
        return $http.post("http://localhost:8080/Visitors", {"id":id})
    },
       editVisitor: function(visitor){
        return $http.post("http://localhost:8080/Visitors", {"visitor": visitor})
    },
        addVisitor: function(visitor){
            return $http.post("http://localhost:8080/Visitors", {"visitor": visitor})
        }
   };
});
