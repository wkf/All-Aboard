@AA.module 'CardsApp', (CardsApp, App, Backbone, Marionette, $, _) ->

  API =
    getList: -> CardsApp.List.Controller.getList()

  App.reqres.setHandler 'get:cards:view', API.getList

  App.addInitializer ->
    suspects = new App.Collections.Cards [
      name: 'Mr. Green'
      image: '/images/card-green.png'
    ,
      name: 'Prof. Plum'
      image: '/images/card-plum.png'
    ]
    weapons = new App.Collections.Cards [
      name: 'Wrench'
      image: '/images/wrench.png'
    ,
      name: 'Lead Pipe'
      image: '/images/lead-pipe.png'
    ]
    rooms = new App.Collections.Cards [
      name: 'Kitchen'
      image: '/images/card-kitchen.png'
    ,
      name: 'Dining Room'
      image: '/images/card-dining.png'
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
