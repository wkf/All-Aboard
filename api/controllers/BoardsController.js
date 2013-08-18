(function() {
  module.exports = {
    show: function(req, res) {
      return res.view({
        title: 'Board',
        bootstrap: {
          players: [1, 2]
        }
      });
    },
    join: function(req, res) {
      Boards.subscribe(req.socket, req.param('id'));
      return res.json({
        status: 'joined'
      });
    },
    message: function(req, res) {
      Boards.subscribers(req.param('id')).forEach(function(socket) {
        if (req.socket.id !== socket.id) {
          return socket.json.send({
            type: req.param('type'),
            data: req.param('data')
          });
        }
      });
      return res.json({
        status: 'sent'
      });
    }
  };

}).call(this);
