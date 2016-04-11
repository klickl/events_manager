# app/assets/javascripts/angular/controllers/EventsControllers.js.coffee

@app.controller 'EventsListCtrl', ['$scope', '$location', '$http',  ($scope, $location, $http) ->
  $scope.events = []

  $scope.createEvent = (createEvent) ->
    $location.path('/addEvent')


  $http.get('./events.json').success((data) ->
    $scope.events = data
  )

  $scope.columnSort = 'created_at'
  $scope.reverse = true


  $scope.order = (col) ->

    if col == 'dateEvent'
      $scope.reverse = false
    else if col == 'created_at'
      $scope.reverse = true

    $scope.columnSort = col

]


@app.controller 'EventsAddCtrl',  ['$scope', '$location', '$http',  ($scope, $location, $http) ->
  $scope.emailPattern = /^.+@.+[.].{2,4}$/i
  $scope.maxlength = 300

  $scope.name = ''
  $scope.dateEvent = ''
  $scope.email_organizer = ''
  $scope.description = ''

  $scope.submitForm = () ->

    if $scope.form.$valid
      event = {
        name: $scope.name
        dateEvent: $scope.dateEvent
        email_organizer: $scope.email_organizer
        description: $scope.description
      }
      console.log(event)
      $http.post('./events.json', event).success((data) ->
        $location.path('')
      ).error((data) ->
        alert("L'évennement n'a pas pu être ajouté !")
      )
]
