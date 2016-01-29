var ConversationActions = require('../actions/conversation_actions');

var apiUtil = {

  fetchConversations: function (callback) {
    $.ajax({
      type: 'GET',
      url: '/api/conversations',
      dataType: 'json',
      success: function (data) {
        ConversationActions.receiveConversations(data);
      },
      error: function () {

      }
    });
  },

  updateConversation: function (conversation) {
    $.ajax({
      type: 'PATCH',
      url: '/api/conversations/' + conversation.id,
      dataType: 'json',
      data: {conversation: conversation},
      success: function (data) {
        ConversationActions.updateConversation(data);
      },
    });
  }
};

module.exports = apiUtil;
