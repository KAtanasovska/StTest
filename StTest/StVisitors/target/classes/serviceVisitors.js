/**
 * Created by Kristinata on 7/24/2016.
 */

angular.module('MyApp')
.service('serviceVisitors',function($http) {
   return {
       getVisitors: function(){
           return $http.get("celoto url od backend")
    },
       deleteVisitor: function(id){
        return $http.post("url od  ", {"id":id})
    },
       editVisitor: function(visitor){
        return $http.post("url od", {"visitor": visitor})
    }
   };
});
