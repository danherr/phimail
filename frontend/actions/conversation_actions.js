var Dispatcher = require('../dispatcher/dispatcher'),
    ConversationConstants = require('../constants/conversation_constants');

var ConversationActions = {
  recieveConversations: function (conversations) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.getAll,
      conversations: conversations
    });

  }

};

module.exports = ConversationActions;
