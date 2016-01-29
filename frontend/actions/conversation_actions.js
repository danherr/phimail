var Dispatcher = require('../dispatcher/dispatcher'),
    ConversationConstants = require('../constants/conversation_constants');

var ConversationActions = {
  receiveConversations: function (conversations) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.getAll,
      conversations: conversations
    });
  },

  updateConversation: function (data) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.updateOne,
      conversation: conversation
    });
  }

};

module.exports = ConversationActions;
