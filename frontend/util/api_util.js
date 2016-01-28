var ConversationActions = require('../actions/conversation_actions');

var apiUtil = {

  fetchConversations: function (callback) {
    $.ajax({
      type: 'GET',
      url: '/api/conversations',
      dataType: 'json',
      success: function (data) {
        ConversationActions.recieveConversations(data);
      },
      error: function () {

      }
    });
  }
};

module.exports = apiUtil;
