var MessageActions = require('../actions/message_actions');

var messageApiUtil = {

  fetchConversation: function (id) {
    $.ajax({
      type: 'GET',
      url: '/api/conversations/' + id,
      dataType: 'json',
      success: function (data) {
        MessageActions.receiveConversation(data);
      },
      error: function () {
      }
    });
  },

  fetchMessage: function (id) {
    $.ajax({
      type: 'GET',
      url: '/api/messages/' + id,
      dataType: 'json',
      success: function (data) {
        MessageActions.receiveMessage(data);
      },
      error: function () {
      }
    });
  },

  createDraft: function (callback) {
    $.ajax ({
      type: 'POST',
      url: '/api/conversations',
      dataType: 'json',
      data: {
        conversation: {title: ""},
        message: {body: "",
                  target_address: ""},
      },
      success: function (data) {
        MessageActions.receiveDraft(data, callback);
      }
    });
  },

  updateDraft: function (draft, send, callback) {
    $.ajax ({
      type: 'PATCH',
      url: '/api/conversations/' + draft.conversation_id + '/messages/' + draft.id + '/update_draft',
      dataType: 'json',
      data: {
        conversation: {title: draft.title, read: true},
        message: {
          target_address: draft.target_address,
          body: draft.body
        },
        send: send
      },
      success: function (data) {
        MessageActions.receiveDraft(data, callback);
      }
    });
  },

  reply: function (conversation_id, message_id, mode) {
    $.ajax ({
      type: 'POST',
      url: '/api/conversations/' + conversation_id + '/messages/' + message_id + '/reply',
      dataType: 'json',
      data: {
        mode: mode
      },
      success: function (data) {
        MessageActions.receiveConversation(data);
      }
    });
  },

  updateReply: function (draft, send) {
    $.ajax ({
      type: 'PATCH',
      url: '/api/conversations/' + draft.conversation_id + '/messages/' + draft.id,
      dataType: 'json',
      data: {
        message: draft,
        send: send
      },
      success: function (data) {
        debugger
        MessageActions.receiveConversation(data);
      }
    });
  },


};

module.exports = messageApiUtil;
