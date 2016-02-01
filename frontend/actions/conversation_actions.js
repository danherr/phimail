var Dispatcher = require('../dispatcher/dispatcher'),
    ConversationConstants = require('../constants/conversation_constants');

var ConversationActions = {
  receiveConversations: function (conversationPacket) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.receiveAll,
      conversationPacket: conversationPacket
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
      id: id
    });
  },

  selectAll: function (criterionCB) {
    Dispatcher.dispatch({
      actionType: ConversationConstants.selectThese,
      criterionCB: criterionCB
    });
  }


};

module.exports = ConversationActions;
