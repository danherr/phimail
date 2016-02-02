var ConversationActions = require('../actions/conversation_actions');

var apiUtil = {

  fetchConversations: function (page, callback) {
    if (!page) page = 1;
    $.ajax({
      type: 'GET',
      url: '/api/conversations',
      dataType: 'json',
      data: {page: page},
      success: function (data) {
        ConversationActions.receiveConversations(data, callback);
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

  updateConversations: function (parameters, ids, page) {
    if (!page) page = 1;
    $.ajax({
      type: 'PATCH',
      url: '/api/conversations/batch_update',
      dataType: 'json',
      data: {conversation: parameters, ids: ids, page: page},
      success: function (data) {
        ConversationActions.receiveConversations(data);
      },
    });
  },

  deleteConversations: function (ids, page) {
    if (!page) page = 1;
    $.ajax({
      type: 'DELETE',
      url: '/api/conversations/batch_delete',
      dataType: 'json',
      data: {ids: ids, page: page},
      success: function (data) {
        ConversationActions.receiveConversations(data);
      },
    });
  }


};

module.exports = apiUtil;
