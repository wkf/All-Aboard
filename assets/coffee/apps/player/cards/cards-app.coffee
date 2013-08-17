@AA.module 'CardsApp', (CardsApp, App, Backbone, Marionette, $, _) ->

  API =
    getList: -> CardsApp.List.Controller.getList()

  App.reqres.setHandler 'get:cards:view', API.getList

  App.addInitializer ->
    suspects = new App.Collections.Cards [
      name: 'Mr. Green'
    ,
      name: 'Prof. Plum'
    ]
    weapons = new App.Collections.Cards [
      name: 'Wrench'
    ,
      name: 'Lead Pipe'
    ]
    rooms = new App.Collections.Cards [
      name: 'Kitchen'
    ,
      name: 'Dining Room'
    ]

    cards = new App.Collections.CardGroups [
      name: 'suspects'
      cards: suspects
    ,
      name: 'weapons'
      cards: weapons
    ,
      name: 'rooms'
      cards: rooms
    ]

    App.reqres.setHandler 'get:card:groups', -> cards
