@AA.module 'ModalApp', (ModalApp, App, Backbone, Marionette, $, _) ->

  API =
    getRoll: (data) ->
      ModalApp.Show.Controller.getRoll(data)

  App.reqres.setHandler 'get:roll:view', (data) -> API.getRoll(data)
