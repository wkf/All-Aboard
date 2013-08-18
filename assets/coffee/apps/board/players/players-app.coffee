@AA.module 'PlayersApp', (PlayersApp, App, Backbone, Marionette, $, _) ->

  API =
    getList: ->
      PlayersApp.List.Controller.getList()

  App.reqres.setHandler 'get:players:view', API.getList

  App.addInitializer ->
    players = new App.Collections.Players [
      name: 'Scarlett'
      image: 'piece-scarlett.png'
      position:
        top: '428px'
        left: '10px'
    ,
      name: 'Mustard'
      image: 'piece-mustard.png'
      position:
        top: '217px'
        left: '10px'
    ]

    App.reqres.setHandler 'get:players', -> players
