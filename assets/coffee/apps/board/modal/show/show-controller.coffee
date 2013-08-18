@AA.module 'ModalApp.Show', (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    getRoll: (data) ->
      new Show.Roll data
