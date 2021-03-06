var Dispatcher = require('../dispatcher/dispatcher'),
    ConversationConstants = require('../constants/conversation_constants');

var ConversationActions = {
    receiveConversations: function (conversationPacket, callback) {
        Dispatcher.dispatch({
            actionType: ConversationConstants.receiveAll,
            conversationPacket: conversationPacket,
            callback: callback
        });
    },

    updateConversation: function (data) {
        Dispatcher.dispatch({
            actionType: ConversationConstants.updateOne,
            conversation: conversation
        });
    },

    updateConversations: function (data) {
        Dispatcher.dispatch({
            actionType: ConversationConstants.updateMany,
            conversations: conversations
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
    },

    clearConversations: function (callback) {
        Dispatcher.dispatch({
            actionType: ConversationConstants.clearStore,
        })
    }

};

module.exports = ConversationActions;
