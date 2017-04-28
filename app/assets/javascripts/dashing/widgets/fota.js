(function() {
  {
    ready: function() {
      return this.setColor(this.get('status'));
    },
    onData: function(data) {
      this.setColor(this.get('status'));
      return $(this.node).fadeOut().fadeIn();
    },
    setColor: function(status) {
      if (status) {
        switch (status) {
          case 'RUN':
            return $(this.node).css("background-color", "#29a334");
          case 'FAIL':
            return $(this.node).css("background-color", "#b80028");
        }
      }
    }
  };

}).call(this);
