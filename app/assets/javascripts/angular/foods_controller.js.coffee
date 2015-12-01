ngidamApp.controller "foodsController", ($scope, $http) ->
  $scope.init = () ->
    $scope.foodName  = ""
    $scope.errorMessage = ""
    $scope.locations = []
  $scope.search = () ->
    $scope.errorStatus = false
    $scope.errorMessage = ""
    $scope.locations = []
    $scope.searching = true
    url = "http://localhost:3000/api/v1/foods/search?q=#{$scope.foodName}"
    # url = "https://api.github.com/users/nurhadimaulana/repos"
    # $http({method: "post", url: url})
    $http({method: "get", url: url})
      .success (data) ->
        console.log data
        $scope.searching = false
        $scope.locations = data
      .error (data, status) ->
        $scope.searching = false
        if status == 404
          $scope.errorMessage = "Result not found"