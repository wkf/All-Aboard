(function() {
  module.exports = {
    show: function(req, res) {
      return res.view({
        title: 'Player'
      });
    }
  };

}).call(this);
