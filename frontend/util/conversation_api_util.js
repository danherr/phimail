var ConversationActions = require('../actions/conversation_actions');

var apiUtil = {

    fetchConversations: function (options, callback) {
        var context = options.context || 'inbox';
        var page = options.page || 1;
        var search = options.search || "";
        $.ajax({
            type: 'GET',
            url: 'api/conversations',
            dataType: 'json',
            data: {
                page: page,
                context: context,
                search: search,
            },
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

    updateConversations: function (parameters, ids, options) {
        var context = options.context || 'inbox';
        var page = options.page || 1;
        var search = options.search || "";

        $.ajax({
            type: 'PATCH',
            url: '/api/conversations/batch_update',
            dataType: 'json',
            data: {
                conversation: parameters,
                ids: ids,
                page: page,
                context: context,
                search: search
            },
            success: function (data) {
                ConversationActions.receiveConversations(data);
            },
        });
    },

    deleteConversations: function (ids, options) {
        var context = options.context || 'inbox';
        var page = options.page || 1;
        var search = options.search || "";

        $.ajax({
            type: 'DELETE',
            url: '/api/conversations/batch_delete',
            dataType: 'json',
            data: {ids: ids, page: page, context: context, search: search},
            success: function (data) {
                ConversationActions.receiveConversations(data);
            },
        });
    },

    deleteDraft: function (id) {
        $.ajax({
            type: 'DELETE',
            url: '/api/conversations/' + id,
            dataType: 'json',
            success: function (data) {
                ConversationActions.receiveConversations(data);
            },
        });
    },

};

module.exports = apiUtil;
