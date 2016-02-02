var ConversationActions = require('../actions/conversation_actions');

var apiUtil = {

  fetchConversations: function (page) {
    if (!page) page = 0;
    $.ajax({
      type: 'GET',
      url: '/api/conversations',
      dataType: 'json',
      data: {page: page},
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
  },

  updateConversations: function (parameters, ids) {
    $.ajax({
      type: 'PATCH',
      url: '/api/conversations/' + conversation.id,
      dataType: 'json',
      data: {conversation: parameters, ids: ids},
      success: function (data) {
        ConversationActions.updateConversations(data);
      },
    });
  }

};

module.exports = apiUtil;
