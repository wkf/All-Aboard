(function() {
  module.exports = {
    show: function(req, res) {
      return res.view({
        title: 'Board'
      });
    },
    join: function(req, res) {
      return Players.findOne(req.param('playerId')).done(function(err, player) {
        if (err || !player) {
          return res.status(404).json({
            status: err || 'player not found'
          });
        } else {
          Boards.subscribe(req.socket, req.param('id'));
          return res.json({
            status: 'joined'
          });
        }
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
