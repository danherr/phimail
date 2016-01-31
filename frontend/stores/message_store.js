var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    MessageConstants = require('../constants/message_constants');

var MessageStore = new Store(Dispatcher);

var _conversation = {};

MessageStore.all = function () {
  return $.extend({}, _conversation);
};

MessageStore.rewriteStore = function (conversation) {
  _conversation = conversation;
};

MessageStore.addFullMessage = function (message) {
  var idx = _conversation.messages.findIndex(function (otherMessage) {
    return otherMessage.id === message.id;
  });

  if (idx === -1) {
    _conversation.messages.push(message);
  } else {
    _conversation.messages[idx] = message;
  }
};

MessageStore.__onDispatch = function (payload) {

  if (payload.actionType === MessageConstants.receiveAll) {
    this.rewriteStore(payload.conversation);
    this.__emitChange();
  } else if (payload.actionType === MessageConstants.receiveOne) {

    this.addFullMessage(payload.message);
    this.__emitChange();
  }
};

module.exports = MessageStore;
