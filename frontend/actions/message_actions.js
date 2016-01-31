var Dispatcher = require('../dispatcher/dispatcher'),
    MessageConstants = require('../constants/message_constants');

var MessageActions = {
  receiveConversation: function (conversation) {
    Dispatcher.dispatch({
      actionType: MessageConstants.receiveAll,
      conversation: conversation
    });
  },

  receiveMessage: function (message) {
    Dispatcher.dispatch({
      actionType: MessageConstants.receiveOne,
      message: message
    });
  }

};

module.exports = MessageActions;
