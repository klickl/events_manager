#app/assets/javascripts/config.js.coffee

@app = angular.module 'app', ['ngSanitize', 'ngRoute', 'ngMessages']


#définition des routes par défaut pour l'application
@app.config ['$routeProvider', ($routeProvider) ->

  $routeProvider
    .when('/addEvent', {
      templateUrl: '/angular_templates/add_event.html',
      controller: 'EventsAddCtrl'
    })
    .otherwise({
      templateUrl: '/angular_templates/home.html',
      controller: 'EventsListCtrl'
    })
]
