var Dispatcher = require('../dispatcher/dispatcher'),
    ConversationConstants = require('../constants/conversation_constants');

var ConversationActions = {
  receiveConversations: function (conversations) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.receiveAll,
      conversations: conversations
    });
  },

  updateConversation: function (data) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.updateOne,
      conversation: conversation
    });
  },

  toggleSelected: function (id) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.toggleSelected,
      ids: id
    });
  },

  selectAll: function (criterionCB) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.selectAll,
      ids: criterionCB
    });
  }


};

module.exports = ConversationActions;
