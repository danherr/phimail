var MessageActions = require('../actions/message_actions');

var messageApiUtil = {

  fetchConversation: function (id) {
    $.ajax({
      type: 'GET',
      url: '/api/conversations/' + id,
      dataType: 'json',
      success: function (data) {
        MessageActions.receiveConversation(data);
      },
      error: function () {
      }
    });
  },

  fetchMessage: function (id) {
    $.ajax({
      type: 'GET',
      url: '/api/messages/' + id,
      dataType: 'json',
      success: function (data) {
        MessageActions.receiveMessage(data);
      },
      error: function () {
      }
    });
  }

};

module.exports = messageApiUtil;
