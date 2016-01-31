var MessageActions = require('../actions/message_actions');

var messageApiUtil = {

  fetchConversation: function (id, callback) {
    $.ajax({
      type: 'GET',
      url: '/api/conversations/' + id,
      dataType: 'json',
      success: function (data) {
        MessageActions.receiveConversation(data);
      },
      error: function () {
        alert("BAD THING");
      }
    });
  }

};

module.exports = messageApiUtil;
