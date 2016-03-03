var Dispatcher = require('../dispatcher/dispatcher'),
    MessageConstants = require('../constants/message_constants');

var MessageActions = {
    receiveConversation: function (conversation, callback) {
        Dispatcher.dispatch({
            actionType: MessageConstants.receiveAll,
            conversation: conversation,
            callback: callback,
        });
    },

    receiveMessage: function (message) {
        Dispatcher.dispatch({
            actionType: MessageConstants.receiveOne,
            message: message
        });
    },

    receiveDraft: function (draft, callback) {
        Dispatcher.dispatch({
            actionType: MessageConstants.oneDraft,
            draft: draft,
            callback: callback,
        });
    }

};

module.exports = MessageActions;
